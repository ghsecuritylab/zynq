--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Fri Aug 16 15:21:54 2019
--Host        : thebe.esat.kuleuven.be running 64-bit CentOS Linux release 7.6.1810 (Core)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CSI_AXI_imp_1QE0RFC is
  port (
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    clk_rxn_0 : in STD_LOGIC;
    clk_rxp_0 : in STD_LOGIC;
    data_lp_n_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_reset_in : in STD_LOGIC;
    rxbyteclkhs : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
end CSI_AXI_imp_1QE0RFC;

architecture STRUCTURE of CSI_AXI_imp_1QE0RFC is
  component design_1_axis_data_fifo_0_1 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axis_data_fifo_0_1;
  component design_1_axis_raw_unpack_0_1 is
  port (
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  end component design_1_axis_raw_unpack_0_1;
  component design_1_csi2_d_phy_rx_0_1 is
  port (
    clk_rxp : in STD_LOGIC;
    clk_rxn : in STD_LOGIC;
    data_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_err : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxbyteclkhs : out STD_LOGIC;
    cl_enable : in STD_LOGIC;
    cl_stopstate : out STD_LOGIC;
    cl_rxclkactivehs : out STD_LOGIC;
    dl0_enable : in STD_LOGIC;
    dl0_rxactivehs : out STD_LOGIC;
    dl0_rxvalidhs : out STD_LOGIC;
    dl0_rxsynchs : out STD_LOGIC;
    dl0_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_enable : in STD_LOGIC;
    dl1_rxactivehs : out STD_LOGIC;
    dl1_rxvalidhs : out STD_LOGIC;
    dl1_rxsynchs : out STD_LOGIC;
    dl1_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl2_enable : in STD_LOGIC;
    dl2_rxactivehs : out STD_LOGIC;
    dl2_rxvalidhs : out STD_LOGIC;
    dl2_rxsynchs : out STD_LOGIC;
    dl2_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl3_enable : in STD_LOGIC;
    dl3_rxactivehs : out STD_LOGIC;
    dl3_rxvalidhs : out STD_LOGIC;
    dl3_rxsynchs : out STD_LOGIC;
    dl3_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_csi2_d_phy_rx_0_1;
  component design_1_csi_to_axis_0_1 is
  port (
    enable_in : in STD_LOGIC;
    rxbyteclkhs : in STD_LOGIC;
    cl_enable : out STD_LOGIC;
    cl_stopstate : in STD_LOGIC;
    cl_rxclkactivehs : in STD_LOGIC;
    dl0_enable : out STD_LOGIC;
    dl0_rxactivehs : in STD_LOGIC;
    dl0_rxvalidhs : in STD_LOGIC;
    dl0_rxsynchs : in STD_LOGIC;
    dl0_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_enable : out STD_LOGIC;
    dl1_rxactivehs : in STD_LOGIC;
    dl1_rxvalidhs : in STD_LOGIC;
    dl1_rxsynchs : in STD_LOGIC;
    dl1_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl2_enable : out STD_LOGIC;
    dl2_rxactivehs : in STD_LOGIC;
    dl2_rxvalidhs : in STD_LOGIC;
    dl2_rxsynchs : in STD_LOGIC;
    dl2_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl3_enable : out STD_LOGIC;
    dl3_rxactivehs : in STD_LOGIC;
    dl3_rxvalidhs : in STD_LOGIC;
    dl3_rxsynchs : in STD_LOGIC;
    dl3_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_err : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  end component design_1_csi_to_axis_0_1;
  component design_1_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_1_0;
  component design_1_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_1;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_raw_unpack_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TUSER : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TVALID : STD_LOGIC;
  signal clk_rxn_0_1 : STD_LOGIC;
  signal clk_rxp_0_1 : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_rxbyteclkhs : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal csi_to_axis_0_M_AXIS_TLAST : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TREADY : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TUSER : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TVALID : STD_LOGIC;
  signal csi_to_axis_0_data_err : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_n_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_p_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxn_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxp_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata(15 downto 0) <= axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0);
  M_AXIS_tlast(0) <= axis_raw_unpack_0_M_AXIS_TLAST;
  M_AXIS_tuser(0) <= axis_raw_unpack_0_M_AXIS_TUSER;
  M_AXIS_tvalid <= axis_raw_unpack_0_M_AXIS_TVALID;
  axis_raw_unpack_0_M_AXIS_TREADY <= M_AXIS_tready;
  clk_rxn_0_1 <= clk_rxn_0;
  clk_rxp_0_1 <= clk_rxp_0;
  data_lp_n_0_1(3 downto 0) <= data_lp_n_0(3 downto 0);
  data_lp_p_0_1(3 downto 0) <= data_lp_p_0(3 downto 0);
  data_rxn_0_1(3 downto 0) <= data_rxn_0(3 downto 0);
  data_rxp_0_1(3 downto 0) <= data_rxp_0(3 downto 0);
  proc_sys_reset_0_peripheral_aresetn1 <= s_axis_aresetn;
  processing_system7_0_FCLK_CLK0 <= s_axis_aclk;
  processing_system7_0_FCLK_RESET0_N <= ext_reset_in;
  rxbyteclkhs <= csi2_d_phy_rx_0_rxbyteclkhs;
axis_data_fifo_0: component design_1_axis_data_fifo_0_1
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1,
      m_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_data_fifo_0_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => csi2_d_phy_rx_0_rxbyteclkhs,
      s_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => csi_to_axis_0_M_AXIS_TDATA(31 downto 0),
      s_axis_tlast => csi_to_axis_0_M_AXIS_TLAST,
      s_axis_tready => csi_to_axis_0_M_AXIS_TREADY,
      s_axis_tuser(0) => csi_to_axis_0_M_AXIS_TUSER,
      s_axis_tvalid => csi_to_axis_0_M_AXIS_TVALID
    );
axis_raw_unpack_0: component design_1_axis_raw_unpack_0_1
     port map (
      m_axis_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1,
      m_axis_tdata(15 downto 0) => axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0),
      m_axis_tlast => axis_raw_unpack_0_M_AXIS_TLAST,
      m_axis_tready => axis_raw_unpack_0_M_AXIS_TREADY,
      m_axis_tuser => axis_raw_unpack_0_M_AXIS_TUSER,
      m_axis_tvalid => axis_raw_unpack_0_M_AXIS_TVALID,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1,
      s_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      s_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      s_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      s_axis_tuser => axis_data_fifo_0_M_AXIS_TUSER(0),
      s_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID
    );
csi2_d_phy_rx_0: component design_1_csi2_d_phy_rx_0_1
     port map (
      cl_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE,
      cl_rxclkactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS,
      cl_stopstate => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE,
      clk_rxn => clk_rxn_0_1,
      clk_rxp => clk_rxp_0_1,
      data_err(3 downto 0) => csi_to_axis_0_data_err(3 downto 0),
      data_lp_n(3 downto 0) => data_lp_n_0_1(3 downto 0),
      data_lp_p(3 downto 0) => data_lp_p_0_1(3 downto 0),
      data_rxn(3 downto 0) => data_rxn_0_1(3 downto 0),
      data_rxp(3 downto 0) => data_rxp_0_1(3 downto 0),
      dl0_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS(7 downto 0),
      dl0_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE,
      dl0_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS,
      dl0_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS,
      dl0_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS,
      dl1_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS(7 downto 0),
      dl1_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE,
      dl1_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS,
      dl1_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS,
      dl1_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS,
      dl2_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXDATAHS(7 downto 0),
      dl2_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_ENABLE,
      dl2_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXACTIVEHS,
      dl2_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXSYNCHS,
      dl2_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXVALIDHS,
      dl3_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXDATAHS(7 downto 0),
      dl3_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_ENABLE,
      dl3_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXACTIVEHS,
      dl3_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXSYNCHS,
      dl3_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXVALIDHS,
      rxbyteclkhs => csi2_d_phy_rx_0_rxbyteclkhs
    );
csi_to_axis_0: component design_1_csi_to_axis_0_1
     port map (
      cl_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE,
      cl_rxclkactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS,
      cl_stopstate => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE,
      data_err(3 downto 0) => csi_to_axis_0_data_err(3 downto 0),
      dl0_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS(7 downto 0),
      dl0_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE,
      dl0_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS,
      dl0_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS,
      dl0_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS,
      dl1_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS(7 downto 0),
      dl1_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE,
      dl1_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS,
      dl1_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS,
      dl1_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS,
      dl2_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXDATAHS(7 downto 0),
      dl2_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_ENABLE,
      dl2_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXACTIVEHS,
      dl2_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXSYNCHS,
      dl2_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXVALIDHS,
      dl3_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXDATAHS(7 downto 0),
      dl3_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_ENABLE,
      dl3_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXACTIVEHS,
      dl3_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXSYNCHS,
      dl3_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXVALIDHS,
      enable_in => xlconstant_0_dout(0),
      m_axis_aclk => csi2_d_phy_rx_0_rxbyteclkhs,
      m_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axis_tdata(31 downto 0) => csi_to_axis_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => csi_to_axis_0_M_AXIS_TLAST,
      m_axis_tready => csi_to_axis_0_M_AXIS_TREADY,
      m_axis_tuser => csi_to_axis_0_M_AXIS_TUSER,
      m_axis_tvalid => csi_to_axis_0_M_AXIS_TVALID,
      rxbyteclkhs => csi2_d_phy_rx_0_rxbyteclkhs
    );
proc_sys_reset_1: component design_1_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => csi2_d_phy_rx_0_rxbyteclkhs
    );
xlconstant_0: component design_1_xlconstant_0_1
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CSI_AXI_imp_SPQYSB is
  port (
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    clk_rxn_0 : in STD_LOGIC;
    clk_rxp_0 : in STD_LOGIC;
    data_lp_n_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_reset_in : in STD_LOGIC;
    rxbyteclkhs : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
end CSI_AXI_imp_SPQYSB;

architecture STRUCTURE of CSI_AXI_imp_SPQYSB is
  component design_1_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axis_data_fifo_0_0;
  component design_1_axis_raw_unpack_0_0 is
  port (
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  end component design_1_axis_raw_unpack_0_0;
  component design_1_csi2_d_phy_rx_0_0 is
  port (
    clk_rxp : in STD_LOGIC;
    clk_rxn : in STD_LOGIC;
    data_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_err : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxbyteclkhs : out STD_LOGIC;
    cl_enable : in STD_LOGIC;
    cl_stopstate : out STD_LOGIC;
    cl_rxclkactivehs : out STD_LOGIC;
    dl0_enable : in STD_LOGIC;
    dl0_rxactivehs : out STD_LOGIC;
    dl0_rxvalidhs : out STD_LOGIC;
    dl0_rxsynchs : out STD_LOGIC;
    dl0_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_enable : in STD_LOGIC;
    dl1_rxactivehs : out STD_LOGIC;
    dl1_rxvalidhs : out STD_LOGIC;
    dl1_rxsynchs : out STD_LOGIC;
    dl1_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl2_enable : in STD_LOGIC;
    dl2_rxactivehs : out STD_LOGIC;
    dl2_rxvalidhs : out STD_LOGIC;
    dl2_rxsynchs : out STD_LOGIC;
    dl2_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl3_enable : in STD_LOGIC;
    dl3_rxactivehs : out STD_LOGIC;
    dl3_rxvalidhs : out STD_LOGIC;
    dl3_rxsynchs : out STD_LOGIC;
    dl3_datahs : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_csi2_d_phy_rx_0_0;
  component design_1_csi_to_axis_0_0 is
  port (
    enable_in : in STD_LOGIC;
    rxbyteclkhs : in STD_LOGIC;
    cl_enable : out STD_LOGIC;
    cl_stopstate : in STD_LOGIC;
    cl_rxclkactivehs : in STD_LOGIC;
    dl0_enable : out STD_LOGIC;
    dl0_rxactivehs : in STD_LOGIC;
    dl0_rxvalidhs : in STD_LOGIC;
    dl0_rxsynchs : in STD_LOGIC;
    dl0_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_enable : out STD_LOGIC;
    dl1_rxactivehs : in STD_LOGIC;
    dl1_rxvalidhs : in STD_LOGIC;
    dl1_rxsynchs : in STD_LOGIC;
    dl1_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl2_enable : out STD_LOGIC;
    dl2_rxactivehs : in STD_LOGIC;
    dl2_rxvalidhs : in STD_LOGIC;
    dl2_rxsynchs : in STD_LOGIC;
    dl2_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl3_enable : out STD_LOGIC;
    dl3_rxactivehs : in STD_LOGIC;
    dl3_rxvalidhs : in STD_LOGIC;
    dl3_rxsynchs : in STD_LOGIC;
    dl3_datahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_err : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  end component design_1_csi_to_axis_0_0;
  component design_1_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_1;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_raw_unpack_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TUSER : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TVALID : STD_LOGIC;
  signal clk_rxn_0_1 : STD_LOGIC;
  signal clk_rxp_0_1 : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_ENABLE : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXACTIVEHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXSYNCHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXVALIDHS : STD_LOGIC;
  signal csi2_d_phy_rx_0_rxbyteclkhs : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal csi_to_axis_0_M_AXIS_TLAST : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TREADY : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TUSER : STD_LOGIC;
  signal csi_to_axis_0_M_AXIS_TVALID : STD_LOGIC;
  signal csi_to_axis_0_data_err : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_n_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_p_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxn_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxp_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata(15 downto 0) <= axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0);
  M_AXIS_tlast(0) <= axis_raw_unpack_0_M_AXIS_TLAST;
  M_AXIS_tuser(0) <= axis_raw_unpack_0_M_AXIS_TUSER;
  M_AXIS_tvalid <= axis_raw_unpack_0_M_AXIS_TVALID;
  axis_raw_unpack_0_M_AXIS_TREADY <= M_AXIS_tready;
  clk_rxn_0_1 <= clk_rxn_0;
  clk_rxp_0_1 <= clk_rxp_0;
  data_lp_n_0_1(3 downto 0) <= data_lp_n_0(3 downto 0);
  data_lp_p_0_1(3 downto 0) <= data_lp_p_0(3 downto 0);
  data_rxn_0_1(3 downto 0) <= data_rxn_0(3 downto 0);
  data_rxp_0_1(3 downto 0) <= data_rxp_0(3 downto 0);
  proc_sys_reset_0_peripheral_aresetn1 <= s_axis_aresetn;
  processing_system7_0_FCLK_CLK0 <= s_axis_aclk;
  processing_system7_0_FCLK_RESET0_N <= ext_reset_in;
  rxbyteclkhs <= csi2_d_phy_rx_0_rxbyteclkhs;
axis_data_fifo_0: component design_1_axis_data_fifo_0_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1,
      m_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_data_fifo_0_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => csi2_d_phy_rx_0_rxbyteclkhs,
      s_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => csi_to_axis_0_M_AXIS_TDATA(31 downto 0),
      s_axis_tlast => csi_to_axis_0_M_AXIS_TLAST,
      s_axis_tready => csi_to_axis_0_M_AXIS_TREADY,
      s_axis_tuser(0) => csi_to_axis_0_M_AXIS_TUSER,
      s_axis_tvalid => csi_to_axis_0_M_AXIS_TVALID
    );
axis_raw_unpack_0: component design_1_axis_raw_unpack_0_0
     port map (
      m_axis_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1,
      m_axis_tdata(15 downto 0) => axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0),
      m_axis_tlast => axis_raw_unpack_0_M_AXIS_TLAST,
      m_axis_tready => axis_raw_unpack_0_M_AXIS_TREADY,
      m_axis_tuser => axis_raw_unpack_0_M_AXIS_TUSER,
      m_axis_tvalid => axis_raw_unpack_0_M_AXIS_TVALID,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1,
      s_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      s_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      s_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      s_axis_tuser => axis_data_fifo_0_M_AXIS_TUSER(0),
      s_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID
    );
csi2_d_phy_rx_0: component design_1_csi2_d_phy_rx_0_0
     port map (
      cl_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE,
      cl_rxclkactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS,
      cl_stopstate => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE,
      clk_rxn => clk_rxn_0_1,
      clk_rxp => clk_rxp_0_1,
      data_err(3 downto 0) => csi_to_axis_0_data_err(3 downto 0),
      data_lp_n(3 downto 0) => data_lp_n_0_1(3 downto 0),
      data_lp_p(3 downto 0) => data_lp_p_0_1(3 downto 0),
      data_rxn(3 downto 0) => data_rxn_0_1(3 downto 0),
      data_rxp(3 downto 0) => data_rxp_0_1(3 downto 0),
      dl0_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS(7 downto 0),
      dl0_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE,
      dl0_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS,
      dl0_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS,
      dl0_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS,
      dl1_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS(7 downto 0),
      dl1_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE,
      dl1_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS,
      dl1_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS,
      dl1_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS,
      dl2_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXDATAHS(7 downto 0),
      dl2_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_ENABLE,
      dl2_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXACTIVEHS,
      dl2_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXSYNCHS,
      dl2_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXVALIDHS,
      dl3_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXDATAHS(7 downto 0),
      dl3_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_ENABLE,
      dl3_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXACTIVEHS,
      dl3_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXSYNCHS,
      dl3_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXVALIDHS,
      rxbyteclkhs => csi2_d_phy_rx_0_rxbyteclkhs
    );
csi_to_axis_0: component design_1_csi_to_axis_0_0
     port map (
      cl_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE,
      cl_rxclkactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS,
      cl_stopstate => csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE,
      data_err(3 downto 0) => csi_to_axis_0_data_err(3 downto 0),
      dl0_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS(7 downto 0),
      dl0_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE,
      dl0_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS,
      dl0_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS,
      dl0_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS,
      dl1_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS(7 downto 0),
      dl1_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE,
      dl1_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS,
      dl1_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS,
      dl1_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS,
      dl2_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXDATAHS(7 downto 0),
      dl2_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_ENABLE,
      dl2_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXACTIVEHS,
      dl2_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXSYNCHS,
      dl2_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL2_RXVALIDHS,
      dl3_datahs(7 downto 0) => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXDATAHS(7 downto 0),
      dl3_enable => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_ENABLE,
      dl3_rxactivehs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXACTIVEHS,
      dl3_rxsynchs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXSYNCHS,
      dl3_rxvalidhs => csi2_d_phy_rx_0_RX_MIPI_PPI_DL3_RXVALIDHS,
      enable_in => xlconstant_0_dout(0),
      m_axis_aclk => csi2_d_phy_rx_0_rxbyteclkhs,
      m_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axis_tdata(31 downto 0) => csi_to_axis_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => csi_to_axis_0_M_AXIS_TLAST,
      m_axis_tready => csi_to_axis_0_M_AXIS_TREADY,
      m_axis_tuser => csi_to_axis_0_M_AXIS_TUSER,
      m_axis_tvalid => csi_to_axis_0_M_AXIS_TVALID,
      rxbyteclkhs => csi2_d_phy_rx_0_rxbyteclkhs
    );
proc_sys_reset_1: component design_1_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => csi2_d_phy_rx_0_rxbyteclkhs
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1CK62Z9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1CK62Z9;

architecture STRUCTURE of m00_couplers_imp_1CK62Z9 is
  component design_1_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= auto_pc_to_m00_couplers_ARID(0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= auto_pc_to_m00_couplers_AWID(0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wid(0) <= auto_pc_to_m00_couplers_WID(0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= m00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => auto_pc_to_m00_couplers_ARID(0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => auto_pc_to_m00_couplers_AWID(0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(0) => auto_pc_to_m00_couplers_BID(0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => auto_pc_to_m00_couplers_RID(0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wid(0) => auto_pc_to_m00_couplers_WID(0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => m00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => m00_couplers_to_auto_pc_BID(0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(0) => m00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1F3MT79 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1F3MT79;

architecture STRUCTURE of m00_couplers_imp_1F3MT79 is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_O9RB90 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_O9RB90;

architecture STRUCTURE of m01_couplers_imp_O9RB90 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1GPUDAU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_1GPUDAU;

architecture STRUCTURE of m02_couplers_imp_1GPUDAU is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_MXTT13 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_MXTT13;

architecture STRUCTURE of m03_couplers_imp_MXTT13 is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_I23CIF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_I23CIF;

architecture STRUCTURE of s00_couplers_imp_I23CIF is
  component design_1_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_NXF5XZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_NXF5XZ;

architecture STRUCTURE of s00_couplers_imp_NXF5XZ is
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_wdata(63 downto 0) <= s00_couplers_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast(0) <= s00_couplers_to_s00_couplers_WLAST(0);
  M_AXI_wstrb(7 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s00_couplers_to_s00_couplers_WLAST(0) <= S_AXI_wlast(0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1FGA71Y is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_1FGA71Y;

architecture STRUCTURE of s01_couplers_imp_1FGA71Y is
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_wdata(63 downto 0) <= s01_couplers_to_s01_couplers_WDATA(63 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(7 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_axi_interconnect_0_0;

architecture STRUCTURE of design_1_axi_interconnect_0_0 is
  component design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_interconnect_0_ARID(0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_interconnect_0_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_interconnect_0_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_interconnect_0_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_interconnect_0_AWID(0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_interconnect_0_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_interconnect_0_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_interconnect_0_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(63 downto 0);
  M00_AXI_wid(0) <= m00_couplers_to_axi_interconnect_0_WID(0);
  M00_AXI_wlast <= m00_couplers_to_axi_interconnect_0_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_awready(0) <= axi_interconnect_0_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= axi_interconnect_0_to_s00_couplers_BVALID(0);
  S00_AXI_wready(0) <= axi_interconnect_0_to_s00_couplers_WREADY(0);
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_awready(0) <= axi_interconnect_0_to_s01_couplers_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= axi_interconnect_0_to_s01_couplers_BVALID(0);
  S01_AXI_wready(0) <= axi_interconnect_0_to_s01_couplers_WREADY(0);
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  axi_interconnect_0_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  axi_interconnect_0_to_s00_couplers_WDATA(63 downto 0) <= S00_AXI_wdata(63 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST(0) <= S00_AXI_wlast(0);
  axi_interconnect_0_to_s00_couplers_WSTRB(7 downto 0) <= S00_AXI_wstrb(7 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  axi_interconnect_0_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  axi_interconnect_0_to_s01_couplers_WDATA(63 downto 0) <= S01_AXI_wdata(63 downto 0);
  axi_interconnect_0_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  axi_interconnect_0_to_s01_couplers_WSTRB(7 downto 0) <= S01_AXI_wstrb(7 downto 0);
  axi_interconnect_0_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_interconnect_0_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_interconnect_0_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1CK62Z9
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_interconnect_0_ARID(0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_interconnect_0_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_interconnect_0_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_interconnect_0_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_interconnect_0_AWID(0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_interconnect_0_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_interconnect_0_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_interconnect_0_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_interconnect_0_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_interconnect_0_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(63 downto 0),
      M_AXI_wid(0) => m00_couplers_to_axi_interconnect_0_WID(0),
      M_AXI_wlast => m00_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_NXF5XZ
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_0_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s00_couplers_BVALID(0),
      S_AXI_wdata(63 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(63 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_to_s00_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(7 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s00_couplers_WVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_1FGA71Y
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_wdata(63 downto 0) => s01_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(7 downto 0) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s01_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_0_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s01_couplers_BVALID(0),
      S_AXI_wdata(63 downto 0) => axi_interconnect_0_to_s01_couplers_WDATA(63 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(7 downto 0) => axi_interconnect_0_to_s01_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s01_couplers_WVALID(0)
    );
xbar: component design_1_xbar_0
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_arburst(3 downto 0) => B"0001",
      s_axi_arcache(7 downto 0) => B"00000011",
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 0) => B"0000000000000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(5 downto 0) => B"000000",
      s_axi_arqos(7 downto 0) => B"00000000",
      s_axi_arready(1 downto 0) => NLW_xbar_s_axi_arready_UNCONNECTED(1 downto 0),
      s_axi_arsize(5 downto 0) => B"001011",
      s_axi_arvalid(1 downto 0) => B"00",
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(7 downto 0) => B"00000000",
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(127 downto 0) => NLW_xbar_s_axi_rdata_UNCONNECTED(127 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1 downto 0) => NLW_xbar_s_axi_rlast_UNCONNECTED(1 downto 0),
      s_axi_rready(1 downto 0) => B"00",
      s_axi_rresp(3 downto 0) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 0),
      s_axi_rvalid(1 downto 0) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1 downto 0),
      s_axi_wdata(127 downto 64) => s01_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(15 downto 8) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_1_axi_interconnect_0_1;

architecture STRUCTURE of design_1_axi_interconnect_0_1 is
  component design_1_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_1_ACLK_net : STD_LOGIC;
  signal axi_interconnect_1_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 4 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_axi_interconnect_1_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_axi_interconnect_1_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_axi_interconnect_1_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_axi_interconnect_1_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_axi_interconnect_1_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_axi_interconnect_1_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_axi_interconnect_1_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_axi_interconnect_1_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_axi_interconnect_1_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_axi_interconnect_1_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_axi_interconnect_1_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_axi_interconnect_1_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_axi_interconnect_1_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_axi_interconnect_1_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_axi_interconnect_1_WVALID(0);
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_axi_interconnect_1_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_axi_interconnect_1_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_axi_interconnect_1_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_axi_interconnect_1_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_axi_interconnect_1_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_1_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_1_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= axi_interconnect_1_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_1_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_1_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= axi_interconnect_1_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= axi_interconnect_1_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_1_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_1_to_s00_couplers_WREADY;
  axi_interconnect_1_ACLK_net <= ACLK;
  axi_interconnect_1_ARESETN_net <= ARESETN;
  axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  axi_interconnect_1_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_1_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_1_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_1_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_1_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  axi_interconnect_1_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  axi_interconnect_1_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  axi_interconnect_1_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_1_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_1_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_1_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_1_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_1_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_1_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_1_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  axi_interconnect_1_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_1_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_1_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_interconnect_1_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_axi_interconnect_1_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_axi_interconnect_1_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_axi_interconnect_1_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_axi_interconnect_1_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_1_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_1_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_axi_interconnect_1_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_axi_interconnect_1_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_axi_interconnect_1_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_1_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_1_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_axi_interconnect_1_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_axi_interconnect_1_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_axi_interconnect_1_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_interconnect_1_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_interconnect_1_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_axi_interconnect_1_WREADY(0) <= M03_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_1F3MT79
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_axi_interconnect_1_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_axi_interconnect_1_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_axi_interconnect_1_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_axi_interconnect_1_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_axi_interconnect_1_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_axi_interconnect_1_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_axi_interconnect_1_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_axi_interconnect_1_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_axi_interconnect_1_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_axi_interconnect_1_WVALID(0),
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_O9RB90
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_axi_interconnect_1_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_axi_interconnect_1_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_axi_interconnect_1_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_axi_interconnect_1_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_axi_interconnect_1_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_axi_interconnect_1_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_axi_interconnect_1_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_axi_interconnect_1_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_axi_interconnect_1_WREADY(0),
      M_AXI_wvalid(0) => m01_couplers_to_axi_interconnect_1_WVALID(0),
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1GPUDAU
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arready(0) => m02_couplers_to_axi_interconnect_1_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_axi_interconnect_1_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awready(0) => m02_couplers_to_axi_interconnect_1_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_axi_interconnect_1_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_axi_interconnect_1_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_axi_interconnect_1_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_axi_interconnect_1_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_axi_interconnect_1_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_axi_interconnect_1_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_axi_interconnect_1_WVALID(0),
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_MXTT13
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arready(0) => m03_couplers_to_axi_interconnect_1_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_axi_interconnect_1_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awready(0) => m03_couplers_to_axi_interconnect_1_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_axi_interconnect_1_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_axi_interconnect_1_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_axi_interconnect_1_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_axi_interconnect_1_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_axi_interconnect_1_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_axi_interconnect_1_WREADY(0),
      M_AXI_wvalid(0) => m03_couplers_to_axi_interconnect_1_WVALID(0),
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready(0) => xbar_to_m03_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready(0) => xbar_to_m03_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m03_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m03_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => xbar_to_m03_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m03_couplers_WVALID(3)
    );
s00_couplers: entity work.s00_couplers_imp_I23CIF
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => axi_interconnect_1_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => axi_interconnect_1_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_interconnect_1_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_1_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_1_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_1_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_1_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => axi_interconnect_1_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => axi_interconnect_1_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => axi_interconnect_1_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_1_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_1_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_interconnect_1_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_1_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_1_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => axi_interconnect_1_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => axi_interconnect_1_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_1_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_1_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => axi_interconnect_1_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => axi_interconnect_1_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_1_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_1_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_1_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => axi_interconnect_1_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => axi_interconnect_1_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_1_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_1_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_1_to_s00_couplers_WVALID
    );
xbar: component design_1_xbar_1
     port map (
      aclk => axi_interconnect_1_ACLK_net,
      aresetn => axi_interconnect_1_ARESETN_net,
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(11 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(11 downto 0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(11 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(11 downto 0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(15 downto 12) => NLW_xbar_m_axi_wstrb_UNCONNECTED(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => NLW_xbar_m_axi_wstrb_UNCONNECTED(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity video_in_0_imp_1LM6KQX is
  port (
    Dout_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_S2MM_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_S2MM_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_S2MM_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_S2MM_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_S2MM_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_resetn : in STD_LOGIC;
    clk_rxn_0 : in STD_LOGIC;
    clk_rxp_0 : in STD_LOGIC;
    data_lp_n_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_reset_in : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC;
    s_axi_CTRL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_aclk : in STD_LOGIC
  );
end video_in_0_imp_1LM6KQX;

architecture STRUCTURE of video_in_0_imp_1LM6KQX is
  component design_1_axi_vdma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_vdma_0_0;
  component design_1_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_c_counter_binary_0_0;
  component design_1_v_demosaic_0_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_v_demosaic_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_0_0;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_s2mm_introut : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_raw_unpack_0_M_AXIS_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_raw_unpack_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_raw_unpack_0_M_AXIS_TVALID : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal clk_rxn_0_1 : STD_LOGIC;
  signal clk_rxp_0_1 : STD_LOGIC;
  signal csi2_d_phy_rx_0_rxbyteclkhs : STD_LOGIC;
  signal data_lp_n_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_p_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxn_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxp_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal v_demosaic_0_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal v_demosaic_0_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_demosaic_0_m_axis_video_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_demosaic_0_m_axis_video_TREADY : STD_LOGIC;
  signal v_demosaic_0_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_demosaic_0_m_axis_video_TVALID : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_v_demosaic_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_v_demosaic_0_m_axis_video_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_demosaic_0_m_axis_video_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_demosaic_0_m_axis_video_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Conn1_AWREADY(0) <= M_AXI_S2MM_awready(0);
  Conn1_BRESP(1 downto 0) <= M_AXI_S2MM_bresp(1 downto 0);
  Conn1_BVALID(0) <= M_AXI_S2MM_bvalid(0);
  Conn1_WREADY(0) <= M_AXI_S2MM_wready(0);
  Conn2_ARADDR(31 downto 0) <= s_axi_CTRL_araddr(31 downto 0);
  Conn2_ARVALID(0) <= s_axi_CTRL_arvalid(0);
  Conn2_AWADDR(31 downto 0) <= s_axi_CTRL_awaddr(31 downto 0);
  Conn2_AWVALID(0) <= s_axi_CTRL_awvalid(0);
  Conn2_BREADY(0) <= s_axi_CTRL_bready(0);
  Conn2_RREADY(0) <= s_axi_CTRL_rready(0);
  Conn2_WDATA(31 downto 0) <= s_axi_CTRL_wdata(31 downto 0);
  Conn2_WSTRB(3 downto 0) <= s_axi_CTRL_wstrb(3 downto 0);
  Conn2_WVALID(0) <= s_axi_CTRL_wvalid(0);
  Conn3_ARADDR(31 downto 0) <= S_AXI_LITE_araddr(31 downto 0);
  Conn3_ARVALID(0) <= S_AXI_LITE_arvalid(0);
  Conn3_AWADDR(31 downto 0) <= S_AXI_LITE_awaddr(31 downto 0);
  Conn3_AWVALID(0) <= S_AXI_LITE_awvalid(0);
  Conn3_BREADY(0) <= S_AXI_LITE_bready(0);
  Conn3_RREADY(0) <= S_AXI_LITE_rready(0);
  Conn3_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  Conn3_WVALID(0) <= S_AXI_LITE_wvalid(0);
  Dout_0(0) <= xlslice_0_Dout(0);
  M_AXI_S2MM_awaddr(31 downto 0) <= Conn1_AWADDR(31 downto 0);
  M_AXI_S2MM_awburst(1 downto 0) <= Conn1_AWBURST(1 downto 0);
  M_AXI_S2MM_awcache(3 downto 0) <= Conn1_AWCACHE(3 downto 0);
  M_AXI_S2MM_awlen(7 downto 0) <= Conn1_AWLEN(7 downto 0);
  M_AXI_S2MM_awprot(2 downto 0) <= Conn1_AWPROT(2 downto 0);
  M_AXI_S2MM_awsize(2 downto 0) <= Conn1_AWSIZE(2 downto 0);
  M_AXI_S2MM_awvalid(0) <= Conn1_AWVALID;
  M_AXI_S2MM_bready(0) <= Conn1_BREADY;
  M_AXI_S2MM_wdata(63 downto 0) <= Conn1_WDATA(63 downto 0);
  M_AXI_S2MM_wlast(0) <= Conn1_WLAST;
  M_AXI_S2MM_wstrb(7 downto 0) <= Conn1_WSTRB(7 downto 0);
  M_AXI_S2MM_wvalid(0) <= Conn1_WVALID;
  S_AXI_LITE_arready(0) <= Conn3_ARREADY;
  S_AXI_LITE_awready(0) <= Conn3_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= Conn3_BRESP(1 downto 0);
  S_AXI_LITE_bvalid(0) <= Conn3_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= Conn3_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= Conn3_RRESP(1 downto 0);
  S_AXI_LITE_rvalid(0) <= Conn3_RVALID;
  S_AXI_LITE_wready(0) <= Conn3_WREADY;
  clk_rxn_0_1 <= clk_rxn_0;
  clk_rxp_0_1 <= clk_rxp_0;
  data_lp_n_0_1(3 downto 0) <= data_lp_n_0(3 downto 0);
  data_lp_p_0_1(3 downto 0) <= data_lp_p_0(3 downto 0);
  data_rxn_0_1(3 downto 0) <= data_rxn_0(3 downto 0);
  data_rxp_0_1(3 downto 0) <= data_rxp_0(3 downto 0);
  proc_sys_reset_0_peripheral_aresetn1 <= axi_resetn;
  processing_system7_0_FCLK_CLK0 <= s_axis_s2mm_aclk;
  processing_system7_0_FCLK_RESET0_N <= ext_reset_in;
  s2mm_introut <= axi_vdma_0_s2mm_introut;
  s_axi_CTRL_arready(0) <= Conn2_ARREADY;
  s_axi_CTRL_awready(0) <= Conn2_AWREADY;
  s_axi_CTRL_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  s_axi_CTRL_bvalid(0) <= Conn2_BVALID;
  s_axi_CTRL_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  s_axi_CTRL_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  s_axi_CTRL_rvalid(0) <= Conn2_RVALID;
  s_axi_CTRL_wready(0) <= Conn2_WREADY;
CSI_AXI: entity work.CSI_AXI_imp_SPQYSB
     port map (
      M_AXIS_tdata(15 downto 0) => axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0),
      M_AXIS_tlast(0) => axis_raw_unpack_0_M_AXIS_TLAST(0),
      M_AXIS_tready => axis_raw_unpack_0_M_AXIS_TREADY,
      M_AXIS_tuser(0) => axis_raw_unpack_0_M_AXIS_TUSER(0),
      M_AXIS_tvalid => axis_raw_unpack_0_M_AXIS_TVALID,
      clk_rxn_0 => clk_rxn_0_1,
      clk_rxp_0 => clk_rxp_0_1,
      data_lp_n_0(3 downto 0) => data_lp_n_0_1(3 downto 0),
      data_lp_p_0(3 downto 0) => data_lp_p_0_1(3 downto 0),
      data_rxn_0(3 downto 0) => data_rxn_0_1(3 downto 0),
      data_rxp_0(3 downto 0) => data_rxp_0_1(3 downto 0),
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      rxbyteclkhs => csi2_d_phy_rx_0_rxbyteclkhs,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1
    );
axi_vdma_0: component design_1_axi_vdma_0_0
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn1,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      m_axi_s2mm_awready => Conn1_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => Conn1_AWVALID,
      m_axi_s2mm_bready => Conn1_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => Conn1_BVALID(0),
      m_axi_s2mm_wdata(63 downto 0) => Conn1_WDATA(63 downto 0),
      m_axi_s2mm_wlast => Conn1_WLAST,
      m_axi_s2mm_wready => Conn1_WREADY(0),
      m_axi_s2mm_wstrb(7 downto 0) => Conn1_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => Conn1_WVALID,
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => axi_vdma_0_s2mm_introut,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => Conn3_ARADDR(8 downto 0),
      s_axi_lite_arready => Conn3_ARREADY,
      s_axi_lite_arvalid => Conn3_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => Conn3_AWADDR(8 downto 0),
      s_axi_lite_awready => Conn3_AWREADY,
      s_axi_lite_awvalid => Conn3_AWVALID(0),
      s_axi_lite_bready => Conn3_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      s_axi_lite_bvalid => Conn3_BVALID,
      s_axi_lite_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      s_axi_lite_rready => Conn3_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      s_axi_lite_rvalid => Conn3_RVALID,
      s_axi_lite_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      s_axi_lite_wready => Conn3_WREADY,
      s_axi_lite_wvalid => Conn3_WVALID(0),
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_s2mm_tdata(31 downto 0) => v_demosaic_0_m_axis_video_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => v_demosaic_0_m_axis_video_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => v_demosaic_0_m_axis_video_TLAST(0),
      s_axis_s2mm_tready => v_demosaic_0_m_axis_video_TREADY,
      s_axis_s2mm_tuser(0) => v_demosaic_0_m_axis_video_TUSER(0),
      s_axis_s2mm_tvalid => v_demosaic_0_m_axis_video_TVALID
    );
c_counter_binary_0: component design_1_c_counter_binary_0_0
     port map (
      CLK => csi2_d_phy_rx_0_rxbyteclkhs,
      Q(23 downto 0) => c_counter_binary_0_Q(23 downto 0)
    );
v_demosaic_0: component design_1_v_demosaic_0_0
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_rst_n => proc_sys_reset_0_peripheral_aresetn1,
      interrupt => NLW_v_demosaic_0_interrupt_UNCONNECTED,
      m_axis_video_TDATA(31 downto 0) => v_demosaic_0_m_axis_video_TDATA(31 downto 0),
      m_axis_video_TDEST(0) => NLW_v_demosaic_0_m_axis_video_TDEST_UNCONNECTED(0),
      m_axis_video_TID(0) => NLW_v_demosaic_0_m_axis_video_TID_UNCONNECTED(0),
      m_axis_video_TKEEP(3 downto 0) => v_demosaic_0_m_axis_video_TKEEP(3 downto 0),
      m_axis_video_TLAST(0) => v_demosaic_0_m_axis_video_TLAST(0),
      m_axis_video_TREADY => v_demosaic_0_m_axis_video_TREADY,
      m_axis_video_TSTRB(3 downto 0) => NLW_v_demosaic_0_m_axis_video_TSTRB_UNCONNECTED(3 downto 0),
      m_axis_video_TUSER(0) => v_demosaic_0_m_axis_video_TUSER(0),
      m_axis_video_TVALID => v_demosaic_0_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(5 downto 0) => Conn2_ARADDR(5 downto 0),
      s_axi_CTRL_ARREADY => Conn2_ARREADY,
      s_axi_CTRL_ARVALID => Conn2_ARVALID(0),
      s_axi_CTRL_AWADDR(5 downto 0) => Conn2_AWADDR(5 downto 0),
      s_axi_CTRL_AWREADY => Conn2_AWREADY,
      s_axi_CTRL_AWVALID => Conn2_AWVALID(0),
      s_axi_CTRL_BREADY => Conn2_BREADY(0),
      s_axi_CTRL_BRESP(1 downto 0) => Conn2_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => Conn2_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => Conn2_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => Conn2_RREADY(0),
      s_axi_CTRL_RRESP(1 downto 0) => Conn2_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => Conn2_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => Conn2_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => Conn2_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => Conn2_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => Conn2_WVALID(0),
      s_axis_video_TDATA(15 downto 0) => axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0),
      s_axis_video_TDEST(0) => '0',
      s_axis_video_TID(0) => '0',
      s_axis_video_TKEEP(1 downto 0) => B"11",
      s_axis_video_TLAST(0) => axis_raw_unpack_0_M_AXIS_TLAST(0),
      s_axis_video_TREADY => axis_raw_unpack_0_M_AXIS_TREADY,
      s_axis_video_TSTRB(1 downto 0) => B"11",
      s_axis_video_TUSER(0) => axis_raw_unpack_0_M_AXIS_TUSER(0),
      s_axis_video_TVALID => axis_raw_unpack_0_M_AXIS_TVALID
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(23 downto 0) => c_counter_binary_0_Q(23 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity video_in_1_imp_1O65HAI is
  port (
    Dout_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_S2MM_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_S2MM_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_S2MM_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_S2MM_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_S2MM_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_S2MM_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_resetn : in STD_LOGIC;
    clk_rxn_0 : in STD_LOGIC;
    clk_rxp_0 : in STD_LOGIC;
    data_lp_n_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_reset_in : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC;
    s_axi_CTRL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_aclk : in STD_LOGIC
  );
end video_in_1_imp_1O65HAI;

architecture STRUCTURE of video_in_1_imp_1O65HAI is
  component design_1_axi_vdma_0_1 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_vdma_0_1;
  component design_1_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_c_counter_binary_0_1;
  component design_1_v_demosaic_0_1 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_v_demosaic_0_1;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_0_1;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_s2mm_introut : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_raw_unpack_0_M_AXIS_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_raw_unpack_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_raw_unpack_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_raw_unpack_0_M_AXIS_TVALID : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal clk_rxn_0_1 : STD_LOGIC;
  signal clk_rxp_0_1 : STD_LOGIC;
  signal csi2_d_phy_rx_0_rxbyteclkhs : STD_LOGIC;
  signal data_lp_n_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_p_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxn_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxp_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal v_demosaic_0_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal v_demosaic_0_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_demosaic_0_m_axis_video_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_demosaic_0_m_axis_video_TREADY : STD_LOGIC;
  signal v_demosaic_0_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_demosaic_0_m_axis_video_TVALID : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_v_demosaic_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_v_demosaic_0_m_axis_video_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_demosaic_0_m_axis_video_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_demosaic_0_m_axis_video_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Conn1_AWREADY(0) <= M_AXI_S2MM_awready(0);
  Conn1_BRESP(1 downto 0) <= M_AXI_S2MM_bresp(1 downto 0);
  Conn1_BVALID(0) <= M_AXI_S2MM_bvalid(0);
  Conn1_WREADY(0) <= M_AXI_S2MM_wready(0);
  Conn2_ARADDR(31 downto 0) <= s_axi_CTRL_araddr(31 downto 0);
  Conn2_ARVALID(0) <= s_axi_CTRL_arvalid(0);
  Conn2_AWADDR(31 downto 0) <= s_axi_CTRL_awaddr(31 downto 0);
  Conn2_AWVALID(0) <= s_axi_CTRL_awvalid(0);
  Conn2_BREADY(0) <= s_axi_CTRL_bready(0);
  Conn2_RREADY(0) <= s_axi_CTRL_rready(0);
  Conn2_WDATA(31 downto 0) <= s_axi_CTRL_wdata(31 downto 0);
  Conn2_WSTRB(3 downto 0) <= s_axi_CTRL_wstrb(3 downto 0);
  Conn2_WVALID(0) <= s_axi_CTRL_wvalid(0);
  Conn3_ARADDR(31 downto 0) <= S_AXI_LITE_araddr(31 downto 0);
  Conn3_ARVALID(0) <= S_AXI_LITE_arvalid(0);
  Conn3_AWADDR(31 downto 0) <= S_AXI_LITE_awaddr(31 downto 0);
  Conn3_AWVALID(0) <= S_AXI_LITE_awvalid(0);
  Conn3_BREADY(0) <= S_AXI_LITE_bready(0);
  Conn3_RREADY(0) <= S_AXI_LITE_rready(0);
  Conn3_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  Conn3_WVALID(0) <= S_AXI_LITE_wvalid(0);
  Dout_0(0) <= xlslice_0_Dout(0);
  M_AXI_S2MM_awaddr(31 downto 0) <= Conn1_AWADDR(31 downto 0);
  M_AXI_S2MM_awburst(1 downto 0) <= Conn1_AWBURST(1 downto 0);
  M_AXI_S2MM_awcache(3 downto 0) <= Conn1_AWCACHE(3 downto 0);
  M_AXI_S2MM_awlen(7 downto 0) <= Conn1_AWLEN(7 downto 0);
  M_AXI_S2MM_awprot(2 downto 0) <= Conn1_AWPROT(2 downto 0);
  M_AXI_S2MM_awsize(2 downto 0) <= Conn1_AWSIZE(2 downto 0);
  M_AXI_S2MM_awvalid(0) <= Conn1_AWVALID;
  M_AXI_S2MM_bready(0) <= Conn1_BREADY;
  M_AXI_S2MM_wdata(63 downto 0) <= Conn1_WDATA(63 downto 0);
  M_AXI_S2MM_wlast(0) <= Conn1_WLAST;
  M_AXI_S2MM_wstrb(7 downto 0) <= Conn1_WSTRB(7 downto 0);
  M_AXI_S2MM_wvalid(0) <= Conn1_WVALID;
  S_AXI_LITE_arready(0) <= Conn3_ARREADY;
  S_AXI_LITE_awready(0) <= Conn3_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= Conn3_BRESP(1 downto 0);
  S_AXI_LITE_bvalid(0) <= Conn3_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= Conn3_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= Conn3_RRESP(1 downto 0);
  S_AXI_LITE_rvalid(0) <= Conn3_RVALID;
  S_AXI_LITE_wready(0) <= Conn3_WREADY;
  clk_rxn_0_1 <= clk_rxn_0;
  clk_rxp_0_1 <= clk_rxp_0;
  data_lp_n_0_1(3 downto 0) <= data_lp_n_0(3 downto 0);
  data_lp_p_0_1(3 downto 0) <= data_lp_p_0(3 downto 0);
  data_rxn_0_1(3 downto 0) <= data_rxn_0(3 downto 0);
  data_rxp_0_1(3 downto 0) <= data_rxp_0(3 downto 0);
  proc_sys_reset_0_peripheral_aresetn1 <= axi_resetn;
  processing_system7_0_FCLK_CLK0 <= s_axis_s2mm_aclk;
  processing_system7_0_FCLK_RESET0_N <= ext_reset_in;
  s2mm_introut <= axi_vdma_0_s2mm_introut;
  s_axi_CTRL_arready(0) <= Conn2_ARREADY;
  s_axi_CTRL_awready(0) <= Conn2_AWREADY;
  s_axi_CTRL_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  s_axi_CTRL_bvalid(0) <= Conn2_BVALID;
  s_axi_CTRL_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  s_axi_CTRL_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  s_axi_CTRL_rvalid(0) <= Conn2_RVALID;
  s_axi_CTRL_wready(0) <= Conn2_WREADY;
CSI_AXI: entity work.CSI_AXI_imp_1QE0RFC
     port map (
      M_AXIS_tdata(15 downto 0) => axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0),
      M_AXIS_tlast(0) => axis_raw_unpack_0_M_AXIS_TLAST(0),
      M_AXIS_tready => axis_raw_unpack_0_M_AXIS_TREADY,
      M_AXIS_tuser(0) => axis_raw_unpack_0_M_AXIS_TUSER(0),
      M_AXIS_tvalid => axis_raw_unpack_0_M_AXIS_TVALID,
      clk_rxn_0 => clk_rxn_0_1,
      clk_rxp_0 => clk_rxp_0_1,
      data_lp_n_0(3 downto 0) => data_lp_n_0_1(3 downto 0),
      data_lp_p_0(3 downto 0) => data_lp_p_0_1(3 downto 0),
      data_rxn_0(3 downto 0) => data_rxn_0_1(3 downto 0),
      data_rxp_0(3 downto 0) => data_rxp_0_1(3 downto 0),
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      rxbyteclkhs => csi2_d_phy_rx_0_rxbyteclkhs,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => proc_sys_reset_0_peripheral_aresetn1
    );
axi_vdma_0: component design_1_axi_vdma_0_1
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn1,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      m_axi_s2mm_awready => Conn1_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => Conn1_AWVALID,
      m_axi_s2mm_bready => Conn1_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => Conn1_BVALID(0),
      m_axi_s2mm_wdata(63 downto 0) => Conn1_WDATA(63 downto 0),
      m_axi_s2mm_wlast => Conn1_WLAST,
      m_axi_s2mm_wready => Conn1_WREADY(0),
      m_axi_s2mm_wstrb(7 downto 0) => Conn1_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => Conn1_WVALID,
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => axi_vdma_0_s2mm_introut,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => Conn3_ARADDR(8 downto 0),
      s_axi_lite_arready => Conn3_ARREADY,
      s_axi_lite_arvalid => Conn3_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => Conn3_AWADDR(8 downto 0),
      s_axi_lite_awready => Conn3_AWREADY,
      s_axi_lite_awvalid => Conn3_AWVALID(0),
      s_axi_lite_bready => Conn3_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      s_axi_lite_bvalid => Conn3_BVALID,
      s_axi_lite_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      s_axi_lite_rready => Conn3_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      s_axi_lite_rvalid => Conn3_RVALID,
      s_axi_lite_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      s_axi_lite_wready => Conn3_WREADY,
      s_axi_lite_wvalid => Conn3_WVALID(0),
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_s2mm_tdata(31 downto 0) => v_demosaic_0_m_axis_video_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => v_demosaic_0_m_axis_video_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => v_demosaic_0_m_axis_video_TLAST(0),
      s_axis_s2mm_tready => v_demosaic_0_m_axis_video_TREADY,
      s_axis_s2mm_tuser(0) => v_demosaic_0_m_axis_video_TUSER(0),
      s_axis_s2mm_tvalid => v_demosaic_0_m_axis_video_TVALID
    );
c_counter_binary_0: component design_1_c_counter_binary_0_1
     port map (
      CLK => csi2_d_phy_rx_0_rxbyteclkhs,
      Q(23 downto 0) => c_counter_binary_0_Q(23 downto 0)
    );
v_demosaic_0: component design_1_v_demosaic_0_1
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_rst_n => proc_sys_reset_0_peripheral_aresetn1,
      interrupt => NLW_v_demosaic_0_interrupt_UNCONNECTED,
      m_axis_video_TDATA(31 downto 0) => v_demosaic_0_m_axis_video_TDATA(31 downto 0),
      m_axis_video_TDEST(0) => NLW_v_demosaic_0_m_axis_video_TDEST_UNCONNECTED(0),
      m_axis_video_TID(0) => NLW_v_demosaic_0_m_axis_video_TID_UNCONNECTED(0),
      m_axis_video_TKEEP(3 downto 0) => v_demosaic_0_m_axis_video_TKEEP(3 downto 0),
      m_axis_video_TLAST(0) => v_demosaic_0_m_axis_video_TLAST(0),
      m_axis_video_TREADY => v_demosaic_0_m_axis_video_TREADY,
      m_axis_video_TSTRB(3 downto 0) => NLW_v_demosaic_0_m_axis_video_TSTRB_UNCONNECTED(3 downto 0),
      m_axis_video_TUSER(0) => v_demosaic_0_m_axis_video_TUSER(0),
      m_axis_video_TVALID => v_demosaic_0_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(5 downto 0) => Conn2_ARADDR(5 downto 0),
      s_axi_CTRL_ARREADY => Conn2_ARREADY,
      s_axi_CTRL_ARVALID => Conn2_ARVALID(0),
      s_axi_CTRL_AWADDR(5 downto 0) => Conn2_AWADDR(5 downto 0),
      s_axi_CTRL_AWREADY => Conn2_AWREADY,
      s_axi_CTRL_AWVALID => Conn2_AWVALID(0),
      s_axi_CTRL_BREADY => Conn2_BREADY(0),
      s_axi_CTRL_BRESP(1 downto 0) => Conn2_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => Conn2_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => Conn2_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => Conn2_RREADY(0),
      s_axi_CTRL_RRESP(1 downto 0) => Conn2_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => Conn2_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => Conn2_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => Conn2_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => Conn2_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => Conn2_WVALID(0),
      s_axis_video_TDATA(15 downto 0) => axis_raw_unpack_0_M_AXIS_TDATA(15 downto 0),
      s_axis_video_TDEST(0) => '0',
      s_axis_video_TID(0) => '0',
      s_axis_video_TKEEP(1 downto 0) => B"11",
      s_axis_video_TLAST(0) => axis_raw_unpack_0_M_AXIS_TLAST(0),
      s_axis_video_TREADY => axis_raw_unpack_0_M_AXIS_TREADY,
      s_axis_video_TSTRB(1 downto 0) => B"11",
      s_axis_video_TUSER(0) => axis_raw_unpack_0_M_AXIS_TUSER(0),
      s_axis_video_TVALID => axis_raw_unpack_0_M_AXIS_TVALID
    );
xlslice_0: component design_1_xlslice_0_1
     port map (
      Din(23 downto 0) => c_counter_binary_0_Q(23 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interconnect_and_reset_imp_1MUDGWB is
  port (
    ACLK : in STD_LOGIC;
    M00_AXI1_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI1_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI1_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI1_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI1_arready : in STD_LOGIC;
    M00_AXI1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI1_arvalid : out STD_LOGIC;
    M00_AXI1_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI1_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI1_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI1_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI1_awready : in STD_LOGIC;
    M00_AXI1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI1_awvalid : out STD_LOGIC;
    M00_AXI1_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI1_bready : out STD_LOGIC;
    M00_AXI1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI1_bvalid : in STD_LOGIC;
    M00_AXI1_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI1_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI1_rlast : in STD_LOGIC;
    M00_AXI1_rready : out STD_LOGIC;
    M00_AXI1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI1_rvalid : in STD_LOGIC;
    M00_AXI1_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI1_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI1_wlast : out STD_LOGIC;
    M00_AXI1_wready : in STD_LOGIC;
    M00_AXI1_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI1_wvalid : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ARESETN : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI1_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI1_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_reset_in : in STD_LOGIC
  );
end interconnect_and_reset_imp_1MUDGWB;

architecture STRUCTURE of interconnect_and_reset_imp_1MUDGWB is
  component design_1_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_0;
  signal ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARREADY : STD_LOGIC;
  signal S00_AXI_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARVALID : STD_LOGIC;
  signal S00_AXI_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWREADY : STD_LOGIC;
  signal S00_AXI_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWVALID : STD_LOGIC;
  signal S00_AXI_2_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_BREADY : STD_LOGIC;
  signal S00_AXI_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_BVALID : STD_LOGIC;
  signal S00_AXI_2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_RLAST : STD_LOGIC;
  signal S00_AXI_2_RREADY : STD_LOGIC;
  signal S00_AXI_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_RVALID : STD_LOGIC;
  signal S00_AXI_2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_WLAST : STD_LOGIC;
  signal S00_AXI_2_WREADY : STD_LOGIC;
  signal S00_AXI_2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_WVALID : STD_LOGIC;
  signal S01_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S01_AXI_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M03_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M03_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_AXI1_araddr(31 downto 0) <= axi_interconnect_0_M00_AXI_ARADDR(31 downto 0);
  M00_AXI1_arburst(1 downto 0) <= axi_interconnect_0_M00_AXI_ARBURST(1 downto 0);
  M00_AXI1_arcache(3 downto 0) <= axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0);
  M00_AXI1_arid(0) <= axi_interconnect_0_M00_AXI_ARID(0);
  M00_AXI1_arlen(3 downto 0) <= axi_interconnect_0_M00_AXI_ARLEN(3 downto 0);
  M00_AXI1_arlock(1 downto 0) <= axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0);
  M00_AXI1_arprot(2 downto 0) <= axi_interconnect_0_M00_AXI_ARPROT(2 downto 0);
  M00_AXI1_arqos(3 downto 0) <= axi_interconnect_0_M00_AXI_ARQOS(3 downto 0);
  M00_AXI1_arsize(2 downto 0) <= axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0);
  M00_AXI1_arvalid <= axi_interconnect_0_M00_AXI_ARVALID;
  M00_AXI1_awaddr(31 downto 0) <= axi_interconnect_0_M00_AXI_AWADDR(31 downto 0);
  M00_AXI1_awburst(1 downto 0) <= axi_interconnect_0_M00_AXI_AWBURST(1 downto 0);
  M00_AXI1_awcache(3 downto 0) <= axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0);
  M00_AXI1_awid(0) <= axi_interconnect_0_M00_AXI_AWID(0);
  M00_AXI1_awlen(3 downto 0) <= axi_interconnect_0_M00_AXI_AWLEN(3 downto 0);
  M00_AXI1_awlock(1 downto 0) <= axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0);
  M00_AXI1_awprot(2 downto 0) <= axi_interconnect_0_M00_AXI_AWPROT(2 downto 0);
  M00_AXI1_awqos(3 downto 0) <= axi_interconnect_0_M00_AXI_AWQOS(3 downto 0);
  M00_AXI1_awsize(2 downto 0) <= axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0);
  M00_AXI1_awvalid <= axi_interconnect_0_M00_AXI_AWVALID;
  M00_AXI1_bready <= axi_interconnect_0_M00_AXI_BREADY;
  M00_AXI1_rready <= axi_interconnect_0_M00_AXI_RREADY;
  M00_AXI1_wdata(63 downto 0) <= axi_interconnect_0_M00_AXI_WDATA(63 downto 0);
  M00_AXI1_wid(0) <= axi_interconnect_0_M00_AXI_WID(0);
  M00_AXI1_wlast <= axi_interconnect_0_M00_AXI_WLAST;
  M00_AXI1_wstrb(7 downto 0) <= axi_interconnect_0_M00_AXI_WSTRB(7 downto 0);
  M00_AXI1_wvalid <= axi_interconnect_0_M00_AXI_WVALID;
  M00_AXI_araddr(31 downto 0) <= axi_interconnect_1_M00_AXI_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= axi_interconnect_1_M00_AXI_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= axi_interconnect_1_M00_AXI_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= axi_interconnect_1_M00_AXI_AWVALID(0);
  M00_AXI_bready(0) <= axi_interconnect_1_M00_AXI_BREADY(0);
  M00_AXI_rready(0) <= axi_interconnect_1_M00_AXI_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= axi_interconnect_1_M00_AXI_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= axi_interconnect_1_M00_AXI_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= axi_interconnect_1_M00_AXI_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= axi_interconnect_1_M01_AXI_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= axi_interconnect_1_M01_AXI_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= axi_interconnect_1_M01_AXI_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= axi_interconnect_1_M01_AXI_AWVALID(0);
  M01_AXI_bready(0) <= axi_interconnect_1_M01_AXI_BREADY(0);
  M01_AXI_rready(0) <= axi_interconnect_1_M01_AXI_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= axi_interconnect_1_M01_AXI_WDATA(31 downto 0);
  M01_AXI_wvalid(0) <= axi_interconnect_1_M01_AXI_WVALID(0);
  M02_AXI_araddr(31 downto 0) <= axi_interconnect_1_M02_AXI_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= axi_interconnect_1_M02_AXI_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= axi_interconnect_1_M02_AXI_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= axi_interconnect_1_M02_AXI_AWVALID(0);
  M02_AXI_bready(0) <= axi_interconnect_1_M02_AXI_BREADY(0);
  M02_AXI_rready(0) <= axi_interconnect_1_M02_AXI_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= axi_interconnect_1_M02_AXI_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= axi_interconnect_1_M02_AXI_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= axi_interconnect_1_M02_AXI_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= axi_interconnect_1_M03_AXI_ARADDR(31 downto 0);
  M03_AXI_arvalid(0) <= axi_interconnect_1_M03_AXI_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= axi_interconnect_1_M03_AXI_AWADDR(31 downto 0);
  M03_AXI_awvalid(0) <= axi_interconnect_1_M03_AXI_AWVALID(0);
  M03_AXI_bready(0) <= axi_interconnect_1_M03_AXI_BREADY(0);
  M03_AXI_rready(0) <= axi_interconnect_1_M03_AXI_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= axi_interconnect_1_M03_AXI_WDATA(31 downto 0);
  M03_AXI_wvalid(0) <= axi_interconnect_1_M03_AXI_WVALID(0);
  S00_ARESETN(0) <= proc_sys_reset_0_peripheral_aresetn1(0);
  S00_AXI1_awready(0) <= S00_AXI_1_AWREADY(0);
  S00_AXI1_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI1_bvalid(0) <= S00_AXI_1_BVALID(0);
  S00_AXI1_wready(0) <= S00_AXI_1_WREADY(0);
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI1_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI1_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI1_awcache(3 downto 0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI1_awlen(7 downto 0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI1_awprot(2 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI1_awsize(2 downto 0);
  S00_AXI_1_AWVALID(0) <= S00_AXI1_awvalid(0);
  S00_AXI_1_BREADY(0) <= S00_AXI1_bready(0);
  S00_AXI_1_WDATA(63 downto 0) <= S00_AXI1_wdata(63 downto 0);
  S00_AXI_1_WLAST(0) <= S00_AXI1_wlast(0);
  S00_AXI_1_WSTRB(7 downto 0) <= S00_AXI1_wstrb(7 downto 0);
  S00_AXI_1_WVALID(0) <= S00_AXI1_wvalid(0);
  S00_AXI_2_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  S00_AXI_2_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_2_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_2_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  S00_AXI_2_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  S00_AXI_2_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  S00_AXI_2_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_2_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  S00_AXI_2_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_2_ARVALID <= S00_AXI_arvalid;
  S00_AXI_2_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_2_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_2_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_2_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  S00_AXI_2_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  S00_AXI_2_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  S00_AXI_2_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_2_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_2_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_2_AWVALID <= S00_AXI_awvalid;
  S00_AXI_2_BREADY <= S00_AXI_bready;
  S00_AXI_2_RREADY <= S00_AXI_rready;
  S00_AXI_2_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  S00_AXI_2_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  S00_AXI_2_WLAST <= S00_AXI_wlast;
  S00_AXI_2_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  S00_AXI_2_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_2_ARREADY;
  S00_AXI_awready <= S00_AXI_2_AWREADY;
  S00_AXI_bid(11 downto 0) <= S00_AXI_2_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= S00_AXI_2_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_2_BVALID;
  S00_AXI_rdata(31 downto 0) <= S00_AXI_2_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= S00_AXI_2_RID(11 downto 0);
  S00_AXI_rlast <= S00_AXI_2_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_2_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_2_RVALID;
  S00_AXI_wready <= S00_AXI_2_WREADY;
  S01_AXI_1_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  S01_AXI_1_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  S01_AXI_1_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  S01_AXI_1_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  S01_AXI_1_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  S01_AXI_1_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  S01_AXI_1_AWVALID(0) <= S01_AXI_awvalid(0);
  S01_AXI_1_BREADY(0) <= S01_AXI_bready(0);
  S01_AXI_1_WDATA(63 downto 0) <= S01_AXI_wdata(63 downto 0);
  S01_AXI_1_WLAST(0) <= S01_AXI_wlast(0);
  S01_AXI_1_WSTRB(7 downto 0) <= S01_AXI_wstrb(7 downto 0);
  S01_AXI_1_WVALID(0) <= S01_AXI_wvalid(0);
  S01_AXI_awready(0) <= S01_AXI_1_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= S01_AXI_1_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= S01_AXI_1_BVALID(0);
  S01_AXI_wready(0) <= S01_AXI_1_WREADY(0);
  axi_interconnect_0_M00_AXI_ARREADY <= M00_AXI1_arready;
  axi_interconnect_0_M00_AXI_AWREADY <= M00_AXI1_awready;
  axi_interconnect_0_M00_AXI_BID(5 downto 0) <= M00_AXI1_bid(5 downto 0);
  axi_interconnect_0_M00_AXI_BRESP(1 downto 0) <= M00_AXI1_bresp(1 downto 0);
  axi_interconnect_0_M00_AXI_BVALID <= M00_AXI1_bvalid;
  axi_interconnect_0_M00_AXI_RDATA(63 downto 0) <= M00_AXI1_rdata(63 downto 0);
  axi_interconnect_0_M00_AXI_RID(5 downto 0) <= M00_AXI1_rid(5 downto 0);
  axi_interconnect_0_M00_AXI_RLAST <= M00_AXI1_rlast;
  axi_interconnect_0_M00_AXI_RRESP(1 downto 0) <= M00_AXI1_rresp(1 downto 0);
  axi_interconnect_0_M00_AXI_RVALID <= M00_AXI1_rvalid;
  axi_interconnect_0_M00_AXI_WREADY <= M00_AXI1_wready;
  axi_interconnect_1_M00_AXI_ARREADY(0) <= M00_AXI_arready(0);
  axi_interconnect_1_M00_AXI_AWREADY(0) <= M00_AXI_awready(0);
  axi_interconnect_1_M00_AXI_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  axi_interconnect_1_M00_AXI_BVALID(0) <= M00_AXI_bvalid(0);
  axi_interconnect_1_M00_AXI_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  axi_interconnect_1_M00_AXI_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  axi_interconnect_1_M00_AXI_RVALID(0) <= M00_AXI_rvalid(0);
  axi_interconnect_1_M00_AXI_WREADY(0) <= M00_AXI_wready(0);
  axi_interconnect_1_M01_AXI_ARREADY(0) <= M01_AXI_arready(0);
  axi_interconnect_1_M01_AXI_AWREADY(0) <= M01_AXI_awready(0);
  axi_interconnect_1_M01_AXI_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  axi_interconnect_1_M01_AXI_BVALID(0) <= M01_AXI_bvalid(0);
  axi_interconnect_1_M01_AXI_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  axi_interconnect_1_M01_AXI_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  axi_interconnect_1_M01_AXI_RVALID(0) <= M01_AXI_rvalid(0);
  axi_interconnect_1_M01_AXI_WREADY(0) <= M01_AXI_wready(0);
  axi_interconnect_1_M02_AXI_ARREADY(0) <= M02_AXI_arready(0);
  axi_interconnect_1_M02_AXI_AWREADY(0) <= M02_AXI_awready(0);
  axi_interconnect_1_M02_AXI_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  axi_interconnect_1_M02_AXI_BVALID(0) <= M02_AXI_bvalid(0);
  axi_interconnect_1_M02_AXI_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  axi_interconnect_1_M02_AXI_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  axi_interconnect_1_M02_AXI_RVALID(0) <= M02_AXI_rvalid(0);
  axi_interconnect_1_M02_AXI_WREADY(0) <= M02_AXI_wready(0);
  axi_interconnect_1_M03_AXI_ARREADY(0) <= M03_AXI_arready(0);
  axi_interconnect_1_M03_AXI_AWREADY(0) <= M03_AXI_awready(0);
  axi_interconnect_1_M03_AXI_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  axi_interconnect_1_M03_AXI_BVALID(0) <= M03_AXI_bvalid(0);
  axi_interconnect_1_M03_AXI_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  axi_interconnect_1_M03_AXI_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  axi_interconnect_1_M03_AXI_RVALID(0) <= M03_AXI_rvalid(0);
  axi_interconnect_1_M03_AXI_WREADY(0) <= M03_AXI_wready(0);
  processing_system7_0_FCLK_CLK0 <= ACLK;
  processing_system7_0_FCLK_RESET0_N <= ext_reset_in;
axi_interconnect_0: entity work.design_1_axi_interconnect_0_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => ARESETN_1(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => axi_interconnect_0_M00_AXI_ARID(0),
      M00_AXI_arlen(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => axi_interconnect_0_M00_AXI_AWID(0),
      M00_AXI_awlen(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_interconnect_0_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_interconnect_0_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => axi_interconnect_0_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_interconnect_0_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wid(0) => axi_interconnect_0_M00_AXI_WID(0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => S00_AXI_1_AWREADY(0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => S00_AXI_1_AWVALID(0),
      S00_AXI_bready(0) => S00_AXI_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_1_BVALID(0),
      S00_AXI_wdata(63 downto 0) => S00_AXI_1_WDATA(63 downto 0),
      S00_AXI_wlast(0) => S00_AXI_1_WLAST(0),
      S00_AXI_wready(0) => S00_AXI_1_WREADY(0),
      S00_AXI_wstrb(7 downto 0) => S00_AXI_1_WSTRB(7 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_1_WVALID(0),
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      S01_AXI_awaddr(31 downto 0) => S01_AXI_1_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_1_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_1_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_1_AWPROT(2 downto 0),
      S01_AXI_awready(0) => S01_AXI_1_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_1_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => S01_AXI_1_AWVALID(0),
      S01_AXI_bready(0) => S01_AXI_1_BREADY(0),
      S01_AXI_bresp(1 downto 0) => S01_AXI_1_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => S01_AXI_1_BVALID(0),
      S01_AXI_wdata(63 downto 0) => S01_AXI_1_WDATA(63 downto 0),
      S01_AXI_wlast(0) => S01_AXI_1_WLAST(0),
      S01_AXI_wready(0) => S01_AXI_1_WREADY(0),
      S01_AXI_wstrb(7 downto 0) => S01_AXI_1_WSTRB(7 downto 0),
      S01_AXI_wvalid(0) => S01_AXI_1_WVALID(0)
    );
axi_interconnect_1: entity work.design_1_axi_interconnect_0_1
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => ARESETN_1(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => axi_interconnect_1_M00_AXI_ARREADY(0),
      M00_AXI_arvalid(0) => axi_interconnect_1_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => axi_interconnect_1_M00_AXI_AWREADY(0),
      M00_AXI_awvalid(0) => axi_interconnect_1_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => axi_interconnect_1_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_interconnect_1_M00_AXI_BVALID(0),
      M00_AXI_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => axi_interconnect_1_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_interconnect_1_M00_AXI_RVALID(0),
      M00_AXI_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => axi_interconnect_1_M00_AXI_WREADY(0),
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => axi_interconnect_1_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      M01_AXI_araddr(31 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => axi_interconnect_1_M01_AXI_ARREADY(0),
      M01_AXI_arvalid(0) => axi_interconnect_1_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => axi_interconnect_1_M01_AXI_AWREADY(0),
      M01_AXI_awvalid(0) => axi_interconnect_1_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => axi_interconnect_1_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_interconnect_1_M01_AXI_BVALID(0),
      M01_AXI_rdata(31 downto 0) => axi_interconnect_1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => axi_interconnect_1_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_interconnect_1_M01_AXI_RVALID(0),
      M01_AXI_wdata(31 downto 0) => axi_interconnect_1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => axi_interconnect_1_M01_AXI_WREADY(0),
      M01_AXI_wvalid(0) => axi_interconnect_1_M01_AXI_WVALID(0),
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      M02_AXI_araddr(31 downto 0) => axi_interconnect_1_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready(0) => axi_interconnect_1_M02_AXI_ARREADY(0),
      M02_AXI_arvalid(0) => axi_interconnect_1_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_1_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready(0) => axi_interconnect_1_M02_AXI_AWREADY(0),
      M02_AXI_awvalid(0) => axi_interconnect_1_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => axi_interconnect_1_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => axi_interconnect_1_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => axi_interconnect_1_M02_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => axi_interconnect_1_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => axi_interconnect_1_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => axi_interconnect_1_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => axi_interconnect_1_M02_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => axi_interconnect_1_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => axi_interconnect_1_M02_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_1_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => axi_interconnect_1_M02_AXI_WVALID(0),
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      M03_AXI_araddr(31 downto 0) => axi_interconnect_1_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready(0) => axi_interconnect_1_M03_AXI_ARREADY(0),
      M03_AXI_arvalid(0) => axi_interconnect_1_M03_AXI_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => axi_interconnect_1_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready(0) => axi_interconnect_1_M03_AXI_AWREADY(0),
      M03_AXI_awvalid(0) => axi_interconnect_1_M03_AXI_AWVALID(0),
      M03_AXI_bready(0) => axi_interconnect_1_M03_AXI_BREADY(0),
      M03_AXI_bresp(1 downto 0) => axi_interconnect_1_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => axi_interconnect_1_M03_AXI_BVALID(0),
      M03_AXI_rdata(31 downto 0) => axi_interconnect_1_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => axi_interconnect_1_M03_AXI_RREADY(0),
      M03_AXI_rresp(1 downto 0) => axi_interconnect_1_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => axi_interconnect_1_M03_AXI_RVALID(0),
      M03_AXI_wdata(31 downto 0) => axi_interconnect_1_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => axi_interconnect_1_M03_AXI_WREADY(0),
      M03_AXI_wvalid(0) => axi_interconnect_1_M03_AXI_WVALID(0),
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn1(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_2_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_2_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_2_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => S00_AXI_2_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => S00_AXI_2_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => S00_AXI_2_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_2_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_2_ARQOS(3 downto 0),
      S00_AXI_arready => S00_AXI_2_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_2_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_2_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_2_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_2_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_2_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => S00_AXI_2_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => S00_AXI_2_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => S00_AXI_2_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_2_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_2_AWQOS(3 downto 0),
      S00_AXI_awready => S00_AXI_2_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_2_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_2_AWVALID,
      S00_AXI_bid(11 downto 0) => S00_AXI_2_BID(11 downto 0),
      S00_AXI_bready => S00_AXI_2_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_2_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_2_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_2_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => S00_AXI_2_RID(11 downto 0),
      S00_AXI_rlast => S00_AXI_2_RLAST,
      S00_AXI_rready => S00_AXI_2_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_2_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_2_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_2_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => S00_AXI_2_WID(11 downto 0),
      S00_AXI_wlast => S00_AXI_2_WLAST,
      S00_AXI_wready => S00_AXI_2_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_2_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_2_WVALID
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => ARESETN_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn1(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DDR_0_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_0_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_0_cas_n : inout STD_LOGIC;
    DDR_0_ck_n : inout STD_LOGIC;
    DDR_0_ck_p : inout STD_LOGIC;
    DDR_0_cke : inout STD_LOGIC;
    DDR_0_cs_n : inout STD_LOGIC;
    DDR_0_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_0_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_odt : inout STD_LOGIC;
    DDR_0_ras_n : inout STD_LOGIC;
    DDR_0_reset_n : inout STD_LOGIC;
    DDR_0_we_n : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_0_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_0_ps_clk : inout STD_LOGIC;
    FIXED_IO_0_ps_porb : inout STD_LOGIC;
    FIXED_IO_0_ps_srstb : inout STD_LOGIC;
    GPIO_tri_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_tri_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_tri_t : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cam_p_clk_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_p_clk_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_rxn_0 : in STD_LOGIC;
    clk_rxn_1 : in STD_LOGIC;
    clk_rxp_0 : in STD_LOGIC;
    clk_rxp_1 : in STD_LOGIC;
    data_lp_n_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_n_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iic_0_scl_i : in STD_LOGIC;
    iic_0_scl_o : out STD_LOGIC;
    iic_0_scl_t : out STD_LOGIC;
    iic_0_sda_i : in STD_LOGIC;
    iic_0_sda_o : out STD_LOGIC;
    iic_0_sda_t : out STD_LOGIC;
    iic_1_scl_i : in STD_LOGIC;
    iic_1_scl_o : out STD_LOGIC;
    iic_1_scl_t : out STD_LOGIC;
    iic_1_sda_i : in STD_LOGIC;
    iic_1_sda_o : out STD_LOGIC;
    iic_1_sda_t : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=42,numReposBlks=27,numNonXlnxBlks=6,numHierBlks=15,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_processing_system7_0_0 is
  port (
    ENET0_GMII_TX_EN : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_GMII_TX_ER : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_MDIO_MDC : out STD_LOGIC;
    ENET0_MDIO_O : out STD_LOGIC;
    ENET0_MDIO_T : out STD_LOGIC;
    ENET0_GMII_TXD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET0_GMII_COL : in STD_LOGIC;
    ENET0_GMII_CRS : in STD_LOGIC;
    ENET0_GMII_RX_CLK : in STD_LOGIC;
    ENET0_GMII_RX_DV : in STD_LOGIC;
    ENET0_GMII_RX_ER : in STD_LOGIC;
    ENET0_GMII_TX_CLK : in STD_LOGIC;
    ENET0_MDIO_I : in STD_LOGIC;
    ENET0_EXT_INTIN : in STD_LOGIC;
    ENET0_GMII_RXD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GPIO_I : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 63 downto 0 );
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    I2C1_SDA_I : in STD_LOGIC;
    I2C1_SDA_O : out STD_LOGIC;
    I2C1_SDA_T : out STD_LOGIC;
    I2C1_SCL_I : in STD_LOGIC;
    I2C1_SCL_O : out STD_LOGIC;
    I2C1_SCL_T : out STD_LOGIC;
    UART0_TX : out STD_LOGIC;
    UART0_RX : in STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_1_processing_system7_0_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARREADY : STD_LOGIC;
  signal S00_AXI_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARVALID : STD_LOGIC;
  signal S00_AXI_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWREADY : STD_LOGIC;
  signal S00_AXI_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWVALID : STD_LOGIC;
  signal S00_AXI_2_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_BREADY : STD_LOGIC;
  signal S00_AXI_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_BVALID : STD_LOGIC;
  signal S00_AXI_2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_RLAST : STD_LOGIC;
  signal S00_AXI_2_RREADY : STD_LOGIC;
  signal S00_AXI_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_RVALID : STD_LOGIC;
  signal S00_AXI_2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_WLAST : STD_LOGIC;
  signal S00_AXI_2_WREADY : STD_LOGIC;
  signal S00_AXI_2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_WVALID : STD_LOGIC;
  signal S01_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S01_AXI_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M03_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M03_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_rxn_0_1 : STD_LOGIC;
  signal clk_rxn_0_2 : STD_LOGIC;
  signal clk_rxp_0_1 : STD_LOGIC;
  signal clk_rxp_0_2 : STD_LOGIC;
  signal data_lp_n_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_n_0_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_p_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_lp_p_0_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxn_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxn_0_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxp_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_rxp_0_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_GPIO_0_TRI_I : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal processing_system7_0_GPIO_0_TRI_O : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal processing_system7_0_GPIO_0_TRI_T : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal processing_system7_0_IIC_0_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_T : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_T : STD_LOGIC;
  signal video_in1_s2mm_introut : STD_LOGIC;
  signal video_in_s2mm_introut : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_ENET0_MDIO_MDC_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_MDIO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_MDIO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_CLK1_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_UART0_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_GMII_TXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_ENET0_GMII_TX_EN_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_ENET0_GMII_TX_ER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_0_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N";
  attribute X_INTERFACE_INFO of DDR_0_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N";
  attribute X_INTERFACE_INFO of DDR_0_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P";
  attribute X_INTERFACE_INFO of DDR_0_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CKE";
  attribute X_INTERFACE_INFO of DDR_0_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N";
  attribute X_INTERFACE_INFO of DDR_0_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 ODT";
  attribute X_INTERFACE_INFO of DDR_0_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N";
  attribute X_INTERFACE_INFO of DDR_0_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N";
  attribute X_INTERFACE_INFO of DDR_0_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_0_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB";
  attribute X_INTERFACE_INFO of iic_0_scl_i : signal is "xilinx.com:interface:iic:1.0 iic_0 ";
  attribute X_INTERFACE_INFO of iic_0_scl_o : signal is "xilinx.com:interface:iic:1.0 iic_0 ";
  attribute X_INTERFACE_INFO of iic_0_scl_t : signal is "xilinx.com:interface:iic:1.0 iic_0 ";
  attribute X_INTERFACE_INFO of iic_0_sda_i : signal is "xilinx.com:interface:iic:1.0 iic_0 ";
  attribute X_INTERFACE_INFO of iic_0_sda_o : signal is "xilinx.com:interface:iic:1.0 iic_0 ";
  attribute X_INTERFACE_INFO of iic_0_sda_t : signal is "xilinx.com:interface:iic:1.0 iic_0 ";
  attribute X_INTERFACE_INFO of iic_1_scl_i : signal is "xilinx.com:interface:iic:1.0 iic_1 ";
  attribute X_INTERFACE_INFO of iic_1_scl_o : signal is "xilinx.com:interface:iic:1.0 iic_1 ";
  attribute X_INTERFACE_INFO of iic_1_scl_t : signal is "xilinx.com:interface:iic:1.0 iic_1 ";
  attribute X_INTERFACE_INFO of iic_1_sda_i : signal is "xilinx.com:interface:iic:1.0 iic_1 ";
  attribute X_INTERFACE_INFO of iic_1_sda_o : signal is "xilinx.com:interface:iic:1.0 iic_1 ";
  attribute X_INTERFACE_INFO of iic_1_sda_t : signal is "xilinx.com:interface:iic:1.0 iic_1 ";
  attribute X_INTERFACE_INFO of DDR_0_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_0_addr : signal is "XIL_INTERFACENAME DDR_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_0_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 BA";
  attribute X_INTERFACE_INFO of DDR_0_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DM";
  attribute X_INTERFACE_INFO of DDR_0_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DQ";
  attribute X_INTERFACE_INFO of DDR_0_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N";
  attribute X_INTERFACE_INFO of DDR_0_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_0_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO";
  attribute X_INTERFACE_INFO of GPIO_tri_i : signal is "xilinx.com:interface:gpio:1.0 GPIO ";
  attribute X_INTERFACE_INFO of GPIO_tri_o : signal is "xilinx.com:interface:gpio:1.0 GPIO ";
  attribute X_INTERFACE_INFO of GPIO_tri_t : signal is "xilinx.com:interface:gpio:1.0 GPIO ";
begin
  GPIO_tri_o(63 downto 0) <= processing_system7_0_GPIO_0_TRI_O(63 downto 0);
  GPIO_tri_t(63 downto 0) <= processing_system7_0_GPIO_0_TRI_T(63 downto 0);
  cam_p_clk_0(0) <= xlslice_0_Dout(0);
  cam_p_clk_1(0) <= xlslice_0_Dout1(0);
  clk_rxn_0_1 <= clk_rxn_0;
  clk_rxn_0_2 <= clk_rxn_1;
  clk_rxp_0_1 <= clk_rxp_0;
  clk_rxp_0_2 <= clk_rxp_1;
  data_lp_n_0_1(3 downto 0) <= data_lp_n_0(3 downto 0);
  data_lp_n_0_2(3 downto 0) <= data_lp_n_1(3 downto 0);
  data_lp_p_0_1(3 downto 0) <= data_lp_p_0(3 downto 0);
  data_lp_p_0_2(3 downto 0) <= data_lp_p_1(3 downto 0);
  data_rxn_0_1(3 downto 0) <= data_rxn_0(3 downto 0);
  data_rxn_0_2(3 downto 0) <= data_rxn_1(3 downto 0);
  data_rxp_0_1(3 downto 0) <= data_rxp_0(3 downto 0);
  data_rxp_0_2(3 downto 0) <= data_rxp_1(3 downto 0);
  iic_0_scl_o <= processing_system7_0_IIC_0_SCL_O;
  iic_0_scl_t <= processing_system7_0_IIC_0_SCL_T;
  iic_0_sda_o <= processing_system7_0_IIC_0_SDA_O;
  iic_0_sda_t <= processing_system7_0_IIC_0_SDA_T;
  iic_1_scl_o <= processing_system7_0_IIC_1_SCL_O;
  iic_1_scl_t <= processing_system7_0_IIC_1_SCL_T;
  iic_1_sda_o <= processing_system7_0_IIC_1_SDA_O;
  iic_1_sda_t <= processing_system7_0_IIC_1_SDA_T;
  processing_system7_0_GPIO_0_TRI_I(63 downto 0) <= GPIO_tri_i(63 downto 0);
  processing_system7_0_IIC_0_SCL_I <= iic_0_scl_i;
  processing_system7_0_IIC_0_SDA_I <= iic_0_sda_i;
  processing_system7_0_IIC_1_SCL_I <= iic_1_scl_i;
  processing_system7_0_IIC_1_SDA_I <= iic_1_sda_i;
interconnect_and_reset: entity work.interconnect_and_reset_imp_1MUDGWB
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      M00_AXI1_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI1_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI1_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI1_arid(0) => axi_interconnect_0_M00_AXI_ARID(0),
      M00_AXI1_arlen(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      M00_AXI1_arlock(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI1_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI1_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI1_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI1_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI1_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI1_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI1_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI1_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI1_awid(0) => axi_interconnect_0_M00_AXI_AWID(0),
      M00_AXI1_awlen(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      M00_AXI1_awlock(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI1_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI1_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI1_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI1_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI1_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI1_bid(5 downto 0) => axi_interconnect_0_M00_AXI_BID(5 downto 0),
      M00_AXI1_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI1_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI1_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI1_rdata(63 downto 0) => axi_interconnect_0_M00_AXI_RDATA(63 downto 0),
      M00_AXI1_rid(5 downto 0) => axi_interconnect_0_M00_AXI_RID(5 downto 0),
      M00_AXI1_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI1_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI1_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI1_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI1_wdata(63 downto 0) => axi_interconnect_0_M00_AXI_WDATA(63 downto 0),
      M00_AXI1_wid(0) => axi_interconnect_0_M00_AXI_WID(0),
      M00_AXI1_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI1_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI1_wstrb(7 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(7 downto 0),
      M00_AXI1_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => axi_interconnect_1_M00_AXI_ARREADY(0),
      M00_AXI_arvalid(0) => axi_interconnect_1_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => axi_interconnect_1_M00_AXI_AWREADY(0),
      M00_AXI_awvalid(0) => axi_interconnect_1_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => axi_interconnect_1_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_interconnect_1_M00_AXI_BVALID(0),
      M00_AXI_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => axi_interconnect_1_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_interconnect_1_M00_AXI_RVALID(0),
      M00_AXI_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => axi_interconnect_1_M00_AXI_WREADY(0),
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => axi_interconnect_1_M00_AXI_WVALID(0),
      M01_AXI_araddr(31 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => axi_interconnect_1_M01_AXI_ARREADY(0),
      M01_AXI_arvalid(0) => axi_interconnect_1_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => axi_interconnect_1_M01_AXI_AWREADY(0),
      M01_AXI_awvalid(0) => axi_interconnect_1_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => axi_interconnect_1_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_interconnect_1_M01_AXI_BVALID(0),
      M01_AXI_rdata(31 downto 0) => axi_interconnect_1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => axi_interconnect_1_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_interconnect_1_M01_AXI_RVALID(0),
      M01_AXI_wdata(31 downto 0) => axi_interconnect_1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => axi_interconnect_1_M01_AXI_WREADY(0),
      M01_AXI_wvalid(0) => axi_interconnect_1_M01_AXI_WVALID(0),
      M02_AXI_araddr(31 downto 0) => axi_interconnect_1_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready(0) => axi_interconnect_1_M02_AXI_ARREADY(0),
      M02_AXI_arvalid(0) => axi_interconnect_1_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_1_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready(0) => axi_interconnect_1_M02_AXI_AWREADY(0),
      M02_AXI_awvalid(0) => axi_interconnect_1_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => axi_interconnect_1_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => axi_interconnect_1_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => axi_interconnect_1_M02_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => axi_interconnect_1_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => axi_interconnect_1_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => axi_interconnect_1_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => axi_interconnect_1_M02_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => axi_interconnect_1_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => axi_interconnect_1_M02_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_1_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => axi_interconnect_1_M02_AXI_WVALID(0),
      M03_AXI_araddr(31 downto 0) => axi_interconnect_1_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready(0) => axi_interconnect_1_M03_AXI_ARREADY(0),
      M03_AXI_arvalid(0) => axi_interconnect_1_M03_AXI_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => axi_interconnect_1_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready(0) => axi_interconnect_1_M03_AXI_AWREADY(0),
      M03_AXI_awvalid(0) => axi_interconnect_1_M03_AXI_AWVALID(0),
      M03_AXI_bready(0) => axi_interconnect_1_M03_AXI_BREADY(0),
      M03_AXI_bresp(1 downto 0) => axi_interconnect_1_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => axi_interconnect_1_M03_AXI_BVALID(0),
      M03_AXI_rdata(31 downto 0) => axi_interconnect_1_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => axi_interconnect_1_M03_AXI_RREADY(0),
      M03_AXI_rresp(1 downto 0) => axi_interconnect_1_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => axi_interconnect_1_M03_AXI_RVALID(0),
      M03_AXI_wdata(31 downto 0) => axi_interconnect_1_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => axi_interconnect_1_M03_AXI_WREADY(0),
      M03_AXI_wvalid(0) => axi_interconnect_1_M03_AXI_WVALID(0),
      S00_ARESETN(0) => proc_sys_reset_0_peripheral_aresetn1(0),
      S00_AXI1_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI1_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI1_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI1_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      S00_AXI1_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI1_awready(0) => S00_AXI_1_AWREADY(0),
      S00_AXI1_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI1_awvalid(0) => S00_AXI_1_AWVALID(0),
      S00_AXI1_bready(0) => S00_AXI_1_BREADY(0),
      S00_AXI1_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI1_bvalid(0) => S00_AXI_1_BVALID(0),
      S00_AXI1_wdata(63 downto 0) => S00_AXI_1_WDATA(63 downto 0),
      S00_AXI1_wlast(0) => S00_AXI_1_WLAST(0),
      S00_AXI1_wready(0) => S00_AXI_1_WREADY(0),
      S00_AXI1_wstrb(7 downto 0) => S00_AXI_1_WSTRB(7 downto 0),
      S00_AXI1_wvalid(0) => S00_AXI_1_WVALID(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_2_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_2_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_2_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => S00_AXI_2_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => S00_AXI_2_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => S00_AXI_2_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_2_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_2_ARQOS(3 downto 0),
      S00_AXI_arready => S00_AXI_2_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_2_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_2_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_2_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_2_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_2_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => S00_AXI_2_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => S00_AXI_2_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => S00_AXI_2_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_2_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_2_AWQOS(3 downto 0),
      S00_AXI_awready => S00_AXI_2_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_2_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_2_AWVALID,
      S00_AXI_bid(11 downto 0) => S00_AXI_2_BID(11 downto 0),
      S00_AXI_bready => S00_AXI_2_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_2_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_2_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_2_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => S00_AXI_2_RID(11 downto 0),
      S00_AXI_rlast => S00_AXI_2_RLAST,
      S00_AXI_rready => S00_AXI_2_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_2_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_2_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_2_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => S00_AXI_2_WID(11 downto 0),
      S00_AXI_wlast => S00_AXI_2_WLAST,
      S00_AXI_wready => S00_AXI_2_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_2_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_2_WVALID,
      S01_AXI_awaddr(31 downto 0) => S01_AXI_1_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_1_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_1_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_1_AWPROT(2 downto 0),
      S01_AXI_awready(0) => S01_AXI_1_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_1_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => S01_AXI_1_AWVALID(0),
      S01_AXI_bready(0) => S01_AXI_1_BREADY(0),
      S01_AXI_bresp(1 downto 0) => S01_AXI_1_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => S01_AXI_1_BVALID(0),
      S01_AXI_wdata(63 downto 0) => S01_AXI_1_WDATA(63 downto 0),
      S01_AXI_wlast(0) => S01_AXI_1_WLAST(0),
      S01_AXI_wready(0) => S01_AXI_1_WREADY(0),
      S01_AXI_wstrb(7 downto 0) => S01_AXI_1_WSTRB(7 downto 0),
      S01_AXI_wvalid(0) => S01_AXI_1_WVALID(0),
      ext_reset_in => processing_system7_0_FCLK_RESET0_N
    );
processing_system7_0: component design_1_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_0_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_0_ba(2 downto 0),
      DDR_CAS_n => DDR_0_cas_n,
      DDR_CKE => DDR_0_cke,
      DDR_CS_n => DDR_0_cs_n,
      DDR_Clk => DDR_0_ck_p,
      DDR_Clk_n => DDR_0_ck_n,
      DDR_DM(3 downto 0) => DDR_0_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_0_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_0_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_0_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_0_reset_n,
      DDR_ODT => DDR_0_odt,
      DDR_RAS_n => DDR_0_ras_n,
      DDR_VRN => FIXED_IO_0_ddr_vrn,
      DDR_VRP => FIXED_IO_0_ddr_vrp,
      DDR_WEB => DDR_0_we_n,
      ENET0_EXT_INTIN => '0',
      ENET0_GMII_COL => '0',
      ENET0_GMII_CRS => '0',
      ENET0_GMII_RXD(7 downto 0) => B"00000000",
      ENET0_GMII_RX_CLK => '0',
      ENET0_GMII_RX_DV => '0',
      ENET0_GMII_RX_ER => '0',
      ENET0_GMII_TXD(7 downto 0) => NLW_processing_system7_0_ENET0_GMII_TXD_UNCONNECTED(7 downto 0),
      ENET0_GMII_TX_CLK => '0',
      ENET0_GMII_TX_EN(0) => NLW_processing_system7_0_ENET0_GMII_TX_EN_UNCONNECTED(0),
      ENET0_GMII_TX_ER(0) => NLW_processing_system7_0_ENET0_GMII_TX_ER_UNCONNECTED(0),
      ENET0_MDIO_I => '0',
      ENET0_MDIO_MDC => NLW_processing_system7_0_ENET0_MDIO_MDC_UNCONNECTED,
      ENET0_MDIO_O => NLW_processing_system7_0_ENET0_MDIO_O_UNCONNECTED,
      ENET0_MDIO_T => NLW_processing_system7_0_ENET0_MDIO_T_UNCONNECTED,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => NLW_processing_system7_0_FCLK_CLK1_UNCONNECTED,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      GPIO_I(63 downto 0) => processing_system7_0_GPIO_0_TRI_I(63 downto 0),
      GPIO_O(63 downto 0) => processing_system7_0_GPIO_0_TRI_O(63 downto 0),
      GPIO_T(63 downto 0) => processing_system7_0_GPIO_0_TRI_T(63 downto 0),
      I2C0_SCL_I => processing_system7_0_IIC_0_SCL_I,
      I2C0_SCL_O => processing_system7_0_IIC_0_SCL_O,
      I2C0_SCL_T => processing_system7_0_IIC_0_SCL_T,
      I2C0_SDA_I => processing_system7_0_IIC_0_SDA_I,
      I2C0_SDA_O => processing_system7_0_IIC_0_SDA_O,
      I2C0_SDA_T => processing_system7_0_IIC_0_SDA_T,
      I2C1_SCL_I => processing_system7_0_IIC_1_SCL_I,
      I2C1_SCL_O => processing_system7_0_IIC_1_SCL_O,
      I2C1_SCL_T => processing_system7_0_IIC_1_SCL_T,
      I2C1_SDA_I => processing_system7_0_IIC_1_SDA_I,
      I2C1_SDA_O => processing_system7_0_IIC_1_SDA_O,
      I2C1_SDA_T => processing_system7_0_IIC_1_SDA_T,
      IRQ_F2P(1 downto 0) => xlconcat_0_dout(1 downto 0),
      MIO(53 downto 0) => FIXED_IO_0_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => S00_AXI_2_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => S00_AXI_2_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => S00_AXI_2_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => S00_AXI_2_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => S00_AXI_2_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => S00_AXI_2_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => S00_AXI_2_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => S00_AXI_2_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => S00_AXI_2_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => S00_AXI_2_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => S00_AXI_2_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => S00_AXI_2_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => S00_AXI_2_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => S00_AXI_2_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => S00_AXI_2_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => S00_AXI_2_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => S00_AXI_2_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => S00_AXI_2_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => S00_AXI_2_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => S00_AXI_2_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => S00_AXI_2_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => S00_AXI_2_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => S00_AXI_2_BID(11 downto 0),
      M_AXI_GP0_BREADY => S00_AXI_2_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => S00_AXI_2_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => S00_AXI_2_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => S00_AXI_2_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => S00_AXI_2_RID(11 downto 0),
      M_AXI_GP0_RLAST => S00_AXI_2_RLAST,
      M_AXI_GP0_RREADY => S00_AXI_2_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => S00_AXI_2_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => S00_AXI_2_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => S00_AXI_2_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => S00_AXI_2_WID(11 downto 0),
      M_AXI_GP0_WLAST => S00_AXI_2_WLAST,
      M_AXI_GP0_WREADY => S00_AXI_2_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => S00_AXI_2_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => S00_AXI_2_WVALID,
      PS_CLK => FIXED_IO_0_ps_clk,
      PS_PORB => FIXED_IO_0_ps_porb,
      PS_SRSTB => FIXED_IO_0_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 1) => B"00000",
      S_AXI_HP0_ARID(0) => axi_interconnect_0_M00_AXI_ARID(0),
      S_AXI_HP0_ARLEN(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_interconnect_0_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_interconnect_0_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 1) => B"00000",
      S_AXI_HP0_AWID(0) => axi_interconnect_0_M00_AXI_AWID(0),
      S_AXI_HP0_AWLEN(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_interconnect_0_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_interconnect_0_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => axi_interconnect_0_M00_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => axi_interconnect_0_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_interconnect_0_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_interconnect_0_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => axi_interconnect_0_M00_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => axi_interconnect_0_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_interconnect_0_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_interconnect_0_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_interconnect_0_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 1) => B"00000",
      S_AXI_HP0_WID(0) => axi_interconnect_0_M00_AXI_WID(0),
      S_AXI_HP0_WLAST => axi_interconnect_0_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_interconnect_0_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_interconnect_0_M00_AXI_WVALID,
      UART0_RX => '1',
      UART0_TX => NLW_processing_system7_0_UART0_TX_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
video_in_0: entity work.video_in_0_imp_1LM6KQX
     port map (
      Dout_0(0) => xlslice_0_Dout(0),
      M_AXI_S2MM_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      M_AXI_S2MM_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      M_AXI_S2MM_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      M_AXI_S2MM_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      M_AXI_S2MM_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      M_AXI_S2MM_awready(0) => S00_AXI_1_AWREADY(0),
      M_AXI_S2MM_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      M_AXI_S2MM_awvalid(0) => S00_AXI_1_AWVALID(0),
      M_AXI_S2MM_bready(0) => S00_AXI_1_BREADY(0),
      M_AXI_S2MM_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      M_AXI_S2MM_bvalid(0) => S00_AXI_1_BVALID(0),
      M_AXI_S2MM_wdata(63 downto 0) => S00_AXI_1_WDATA(63 downto 0),
      M_AXI_S2MM_wlast(0) => S00_AXI_1_WLAST(0),
      M_AXI_S2MM_wready(0) => S00_AXI_1_WREADY(0),
      M_AXI_S2MM_wstrb(7 downto 0) => S00_AXI_1_WSTRB(7 downto 0),
      M_AXI_S2MM_wvalid(0) => S00_AXI_1_WVALID(0),
      S_AXI_LITE_araddr(31 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(31 downto 0),
      S_AXI_LITE_arready(0) => axi_interconnect_1_M01_AXI_ARREADY(0),
      S_AXI_LITE_arvalid(0) => axi_interconnect_1_M01_AXI_ARVALID(0),
      S_AXI_LITE_awaddr(31 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(31 downto 0),
      S_AXI_LITE_awready(0) => axi_interconnect_1_M01_AXI_AWREADY(0),
      S_AXI_LITE_awvalid(0) => axi_interconnect_1_M01_AXI_AWVALID(0),
      S_AXI_LITE_bready(0) => axi_interconnect_1_M01_AXI_BREADY(0),
      S_AXI_LITE_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid(0) => axi_interconnect_1_M01_AXI_BVALID(0),
      S_AXI_LITE_rdata(31 downto 0) => axi_interconnect_1_M01_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready(0) => axi_interconnect_1_M01_AXI_RREADY(0),
      S_AXI_LITE_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid(0) => axi_interconnect_1_M01_AXI_RVALID(0),
      S_AXI_LITE_wdata(31 downto 0) => axi_interconnect_1_M01_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready(0) => axi_interconnect_1_M01_AXI_WREADY(0),
      S_AXI_LITE_wvalid(0) => axi_interconnect_1_M01_AXI_WVALID(0),
      axi_resetn => proc_sys_reset_0_peripheral_aresetn1(0),
      clk_rxn_0 => clk_rxn_0_1,
      clk_rxp_0 => clk_rxp_0_1,
      data_lp_n_0(3 downto 0) => data_lp_n_0_1(3 downto 0),
      data_lp_p_0(3 downto 0) => data_lp_p_0_1(3 downto 0),
      data_rxn_0(3 downto 0) => data_rxn_0_1(3 downto 0),
      data_rxp_0(3 downto 0) => data_rxp_0_1(3 downto 0),
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      s2mm_introut => video_in_s2mm_introut,
      s_axi_CTRL_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      s_axi_CTRL_arready(0) => axi_interconnect_1_M00_AXI_ARREADY(0),
      s_axi_CTRL_arvalid(0) => axi_interconnect_1_M00_AXI_ARVALID(0),
      s_axi_CTRL_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      s_axi_CTRL_awready(0) => axi_interconnect_1_M00_AXI_AWREADY(0),
      s_axi_CTRL_awvalid(0) => axi_interconnect_1_M00_AXI_AWVALID(0),
      s_axi_CTRL_bready(0) => axi_interconnect_1_M00_AXI_BREADY(0),
      s_axi_CTRL_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      s_axi_CTRL_bvalid(0) => axi_interconnect_1_M00_AXI_BVALID(0),
      s_axi_CTRL_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      s_axi_CTRL_rready(0) => axi_interconnect_1_M00_AXI_RREADY(0),
      s_axi_CTRL_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      s_axi_CTRL_rvalid(0) => axi_interconnect_1_M00_AXI_RVALID(0),
      s_axi_CTRL_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      s_axi_CTRL_wready(0) => axi_interconnect_1_M00_AXI_WREADY(0),
      s_axi_CTRL_wstrb(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_wvalid(0) => axi_interconnect_1_M00_AXI_WVALID(0),
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0
    );
video_in_1: entity work.video_in_1_imp_1O65HAI
     port map (
      Dout_0(0) => xlslice_0_Dout1(0),
      M_AXI_S2MM_awaddr(31 downto 0) => S01_AXI_1_AWADDR(31 downto 0),
      M_AXI_S2MM_awburst(1 downto 0) => S01_AXI_1_AWBURST(1 downto 0),
      M_AXI_S2MM_awcache(3 downto 0) => S01_AXI_1_AWCACHE(3 downto 0),
      M_AXI_S2MM_awlen(7 downto 0) => S01_AXI_1_AWLEN(7 downto 0),
      M_AXI_S2MM_awprot(2 downto 0) => S01_AXI_1_AWPROT(2 downto 0),
      M_AXI_S2MM_awready(0) => S01_AXI_1_AWREADY(0),
      M_AXI_S2MM_awsize(2 downto 0) => S01_AXI_1_AWSIZE(2 downto 0),
      M_AXI_S2MM_awvalid(0) => S01_AXI_1_AWVALID(0),
      M_AXI_S2MM_bready(0) => S01_AXI_1_BREADY(0),
      M_AXI_S2MM_bresp(1 downto 0) => S01_AXI_1_BRESP(1 downto 0),
      M_AXI_S2MM_bvalid(0) => S01_AXI_1_BVALID(0),
      M_AXI_S2MM_wdata(63 downto 0) => S01_AXI_1_WDATA(63 downto 0),
      M_AXI_S2MM_wlast(0) => S01_AXI_1_WLAST(0),
      M_AXI_S2MM_wready(0) => S01_AXI_1_WREADY(0),
      M_AXI_S2MM_wstrb(7 downto 0) => S01_AXI_1_WSTRB(7 downto 0),
      M_AXI_S2MM_wvalid(0) => S01_AXI_1_WVALID(0),
      S_AXI_LITE_araddr(31 downto 0) => axi_interconnect_1_M03_AXI_ARADDR(31 downto 0),
      S_AXI_LITE_arready(0) => axi_interconnect_1_M03_AXI_ARREADY(0),
      S_AXI_LITE_arvalid(0) => axi_interconnect_1_M03_AXI_ARVALID(0),
      S_AXI_LITE_awaddr(31 downto 0) => axi_interconnect_1_M03_AXI_AWADDR(31 downto 0),
      S_AXI_LITE_awready(0) => axi_interconnect_1_M03_AXI_AWREADY(0),
      S_AXI_LITE_awvalid(0) => axi_interconnect_1_M03_AXI_AWVALID(0),
      S_AXI_LITE_bready(0) => axi_interconnect_1_M03_AXI_BREADY(0),
      S_AXI_LITE_bresp(1 downto 0) => axi_interconnect_1_M03_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid(0) => axi_interconnect_1_M03_AXI_BVALID(0),
      S_AXI_LITE_rdata(31 downto 0) => axi_interconnect_1_M03_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready(0) => axi_interconnect_1_M03_AXI_RREADY(0),
      S_AXI_LITE_rresp(1 downto 0) => axi_interconnect_1_M03_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid(0) => axi_interconnect_1_M03_AXI_RVALID(0),
      S_AXI_LITE_wdata(31 downto 0) => axi_interconnect_1_M03_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready(0) => axi_interconnect_1_M03_AXI_WREADY(0),
      S_AXI_LITE_wvalid(0) => axi_interconnect_1_M03_AXI_WVALID(0),
      axi_resetn => proc_sys_reset_0_peripheral_aresetn1(0),
      clk_rxn_0 => clk_rxn_0_2,
      clk_rxp_0 => clk_rxp_0_2,
      data_lp_n_0(3 downto 0) => data_lp_n_0_2(3 downto 0),
      data_lp_p_0(3 downto 0) => data_lp_p_0_2(3 downto 0),
      data_rxn_0(3 downto 0) => data_rxn_0_2(3 downto 0),
      data_rxp_0(3 downto 0) => data_rxp_0_2(3 downto 0),
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      s2mm_introut => video_in1_s2mm_introut,
      s_axi_CTRL_araddr(31 downto 0) => axi_interconnect_1_M02_AXI_ARADDR(31 downto 0),
      s_axi_CTRL_arready(0) => axi_interconnect_1_M02_AXI_ARREADY(0),
      s_axi_CTRL_arvalid(0) => axi_interconnect_1_M02_AXI_ARVALID(0),
      s_axi_CTRL_awaddr(31 downto 0) => axi_interconnect_1_M02_AXI_AWADDR(31 downto 0),
      s_axi_CTRL_awready(0) => axi_interconnect_1_M02_AXI_AWREADY(0),
      s_axi_CTRL_awvalid(0) => axi_interconnect_1_M02_AXI_AWVALID(0),
      s_axi_CTRL_bready(0) => axi_interconnect_1_M02_AXI_BREADY(0),
      s_axi_CTRL_bresp(1 downto 0) => axi_interconnect_1_M02_AXI_BRESP(1 downto 0),
      s_axi_CTRL_bvalid(0) => axi_interconnect_1_M02_AXI_BVALID(0),
      s_axi_CTRL_rdata(31 downto 0) => axi_interconnect_1_M02_AXI_RDATA(31 downto 0),
      s_axi_CTRL_rready(0) => axi_interconnect_1_M02_AXI_RREADY(0),
      s_axi_CTRL_rresp(1 downto 0) => axi_interconnect_1_M02_AXI_RRESP(1 downto 0),
      s_axi_CTRL_rvalid(0) => axi_interconnect_1_M02_AXI_RVALID(0),
      s_axi_CTRL_wdata(31 downto 0) => axi_interconnect_1_M02_AXI_WDATA(31 downto 0),
      s_axi_CTRL_wready(0) => axi_interconnect_1_M02_AXI_WREADY(0),
      s_axi_CTRL_wstrb(3 downto 0) => axi_interconnect_1_M02_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_wvalid(0) => axi_interconnect_1_M02_AXI_WVALID(0),
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(0) => video_in_s2mm_introut,
      In1(0) => video_in1_s2mm_introut,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
end STRUCTURE;
