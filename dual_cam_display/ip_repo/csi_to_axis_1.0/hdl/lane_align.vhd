----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
----------------------------------------------------------------------------------
entity lane_align is
generic(
    C_LANES                 : INTEGER range 1 to 4  := 4;
    C_TIMEOUT               : INTEGER               := 127
);
port (
    clk_in                  : in  STD_LOGIC;
    resync                  : in  STD_LOGIC;
    data_in                 : in  STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
    valid_in                : in  STD_LOGIC_VECTOR(C_LANES-1 downto 0);
    data_out                : out STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
    valid_out               : out STD_LOGIC_VECTOR(C_LANES-1 downto 0);
    data_err                : out STD_LOGIC_VECTOR(C_LANES-1 downto 0)
);
end lane_align;
----------------------------------------------------------------------------------
architecture arch_imp of lane_align is
----------------------------------------------------------------------------------
constant C_SOT              : STD_LOGIC_VECTOR(15 downto 0) := x"B800";
constant ones_vec           : STD_LOGIC_VECTOR(C_LANES-1 downto 0) := (others => '1');
constant zero_vec           : STD_LOGIC_VECTOR(C_LANES-1 downto 0) := (others => '0');
constant C_CNT_LIMIT        : integer := 1;
----------------------------------------------------------------------------------
type sr_data_type is array (0 to C_LANES-1) of STD_LOGIC_VECTOR(23 downto 0);
signal data_sr              : sr_data_type;
type buf_data_type is array (0 to C_LANES-1) of STD_LOGIC_VECTOR(15 downto 0);
signal data_dly             : buf_data_type;
signal sot_found            : STD_LOGIC_VECTOR(C_LANES-1 downto 0);
type shift_type is array (0 to C_LANES-1) of integer range 0 to 8;
signal data_shift_det       : shift_type;
signal data_shift           : shift_type;
signal transfer             : STD_LOGIC_VECTOR(C_LANES-1 downto 0);

type to_cnt_type is array (0 to C_LANES-1) of integer range 0 to C_TIMEOUT;
signal to_cnt               : to_cnt_type;
signal to_flag              : STD_LOGIC_VECTOR(C_LANES-1 downto 0);

signal test0, test1, test0_det, test1_det                 : integer;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
process(data_sr)
begin
    sot_found           <= (others => '0');
    data_shift_det      <= (others => 0);
    for j in 0 to C_LANES-1 loop
        for i in 0 to 8 loop
            if(data_sr(j)(i+15 downto i) = C_SOT)then
                sot_found(j)        <= '1';
                data_shift_det(j)   <= i;
            end if;
        end loop;
    end loop;
end process;

process(clk_in)
begin
    if(clk_in = '1' and clk_in'event)then
        for i in 0 to C_LANES-1 loop
            
            if(valid_in(i) = '1')then
                data_sr(i)      <= data_in(i*8+7 downto i*8) & data_sr(i)(23 downto 8);
            end if;
            data_dly(i)         <= data_sr(i)(23 downto 8);
            
            if(transfer(i) = '0')then
                if((valid_in(i) = '1') and (sot_found(i) = '1'))then
                    data_shift(i)      <= data_shift_det(i);
                    transfer(i)     <= '1';
                end if;
                if(valid_in(i) = '1')then
                    if(sot_found(i) = '1')then
                        to_flag(i)      <= '0';
                        to_cnt(i)       <= 0;
                    else
                        if(to_cnt(i) /= C_TIMEOUT)then
                            to_cnt(i)   <= to_cnt(i) + 1;
                        else
                            to_flag(i)  <= '1';
                        end if;
                    end if;
                end if;
            else
                if((valid_in(i) = '0') or (resync = '1'))then
                    transfer(i)     <= '0';
                    to_cnt(i)       <= 0;
                end if;
            end if;
        end loop;
    end if;
end process;

data_err        <= to_flag;
test0_det            <= data_shift_det(0);
test1_det            <= data_shift_det(1);
test0            <= data_shift(0);
test1            <= data_shift(1);


out_gen: for i in 0 to C_LANES-1 generate
begin
    data_out(i*8+7 downto i*8)  <= data_dly(i)(data_shift(i)+7 downto data_shift(i));
    valid_out(i)                <= transfer(i);
end generate;
---------------------------------------------------------------------------------
end arch_imp;
