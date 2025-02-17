/******************************************************************************
*
* Copyright (C) 2017 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "xil_cache.h"
#include "hw_set.h"
#include "display_demo.h"


extern int wr_index[2];
extern int rd_index[2];
extern XAxiVdma vdma_vout;
extern XAxiVdma vdma_vin[2];
extern int frame_length_curr;

extern u8 frameBuf0[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__ ((aligned(64)));
extern u8 frameBuf1[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__ ((aligned(64)));
extern u8 *pFrames0[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers
extern u8 *pFrames1[DISPLAY_NUM_FRAMES];
 int WriteOneFrameEnd[2]={-1,-1};
void transfer_data(const char *pData, int len);

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

#define DEFAULT_IP_ADDRESS	"10.88.19.18"
#define DEFAULT_IP_MASK		"255.255.254.0"
#define DEFAULT_GW_ADDRESS	"10.88.19.254"

void platform_enable_interrupts(void);
void start_application(void);
void print_app_header(void);

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

struct netif server_netif;

static void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if (!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if (!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if (!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}

int main(void)
{
	struct netif *netif;

	/* the mac address of the board. this should be unique per board
	 *
	 * MAC set to b0:0b:b0:0b:ba:be
	 */
	unsigned char mac_ethernet_address[] = {
		0xb0, 0x0b, 0xb0, 0x0b, 0xba, 0xbe };

	netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

	/* Define this board specific macro in order perform PHY reset
	 * on ZCU102
	 */
#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	init_platform();

	xil_printf("\r\n\r\n");
	xil_printf("-----display demo-----\r\n");

	/* initialize lwIP */
	lwip_init();

	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
				PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return -1;
	}
	netif_set_default(netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(netif);

#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(netif);
	dhcp_timoutcntr = 24;
	while (((netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(netif);

	if (dhcp_timoutcntr <= 0) {
		if ((netif->ip_addr.addr) == 0) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			assign_default_ip(&(netif->ip_addr),
					&(netif->netmask), &(netif->gw));
		}
	}

	/* print IP address, netmask and gateway */
#else
	assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif
	print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));

	xil_printf("\r\n");



	/* print app header */
	print_app_header();
	/*
			 * Initialize an array of pointers to the 3 frame buffers
			 */
		for (int i = 0; i < DISPLAY_NUM_FRAMES; i++)
		{
			pFrames0[i] = frameBuf0[i];
			pFrames1[i] = frameBuf1[i];
			memset(pFrames0[i], 0, DEMO_MAX_FRAME);
			Xil_DCacheFlushRange((INTPTR) pFrames0[i], DEMO_MAX_FRAME) ;
			memset(pFrames1[i], 0, DEMO_MAX_FRAME);
			Xil_DCacheFlushRange((INTPTR) pFrames1[i], DEMO_MAX_FRAME) ;
		}
		/* start the application*/
		start_application();

		/*init VDMA*/
		init_vdmas();
		/*init tpg*/
		init_tpg();


	xil_printf("\r\n");
	int index;
	//xemacif_input(netif);
	while (1) {
		xil_printf("1\r\n");
		xil_printf("%x\r\n",Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x34));
		xil_printf("%x\r\n",Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x30));
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(netif);
		if(WriteOneFrameEnd[0] >= 0)
						{
							//targetPicHeader[4] = 2;
							index = WriteOneFrameEnd[0];
							int cot;
							Xil_DCacheInvalidateRange((u32)pFrames0[index], frame_length_curr);
							//xil_printf("1");
							/* Separate camera 1 frame in package*/
							for(int i=0;i<frame_length_curr;i+=7200)				//###########################7200
							{
								if((7200+i)>=frame_length_curr)
								{
									cot = frame_length_curr-i;
								}
								else
								{
									cot = 7200;
								}
								transfer_data((const char *)pFrames0[index]+i, cot);
							}
							WriteOneFrameEnd[0] = -1;
						}
						/* Separate camera 2 frame in package*/
						if((WriteOneFrameEnd[1] >= 0))
						{
							//targetPicHeader[4] = 3;
							index = WriteOneFrameEnd[1];
							int cot;
							Xil_DCacheInvalidateRange((u32)pFrames1[index], frame_length_curr);
							for(int i=0;i<frame_length_curr;i+=7200)
							{
								if((i+7200)>=frame_length_curr)
								{
									cot = frame_length_curr-i;
								}
								else
								{
									cot = 7200;
								}
								transfer_data((const char *)pFrames1[index]+i, cot);
							}
							WriteOneFrameEnd[1] = -1;
						}

	}

	/* never reached */
	cleanup_platform();

	return 0;
}
