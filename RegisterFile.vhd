----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:14 04/03/2017 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.mypackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
	port(
		read_sel1 : in std_logic_vector(4 downto 0);
		read_sel2 : in std_logic_vector(4 downto 0);
		write_sel : in std_logic_vector(4 downto 0);
		write_ena : in std_logic;
		clk : in std_logic;
		write_data : in std_logic_vector(31 downto 0);
		data1: out std_logic_vector(31 downto 0);
		data2: out std_logic_vector(31 downto 0)
	);
end RegisterFile;


			
architecture Behavioral of RegisterFile is
signal bus0,  bus1,  bus2,  bus3,  bus4,  bus5,  bus6,  bus7,  bus8,  bus9,
		 bus10, bus11, bus12, bus13, bus14, bus15, bus16, bus17, bus18, bus19,
		 bus20, bus21, bus22, bus23, bus24, bus25, bus26, bus27, bus28, bus29,
		 bus30, bus31: std_logic_vector(31 downto 0);

signal tmpw, writeTo : std_logic_vector(0 to 31);
signal temp0, temp1, temp2 : std_logic_vector(31 downto 0);
begin
	
		--writeTo <= (others =>'0');
		dec : Decoder port map (write_sel,tmpw);
		
		writeTo(31) <= tmpw(31) AND write_ena;
		writeTo(30) <= tmpw(30) AND write_ena;
		writeTo(29) <= tmpw(29) AND write_ena;
		writeTo(28) <= tmpw(28) AND write_ena;
		writeTo(27) <= tmpw(27) AND write_ena;
		writeTo(26) <= tmpw(26) AND write_ena;
		writeTo(25) <= tmpw(25) AND write_ena;
		writeTo(24) <= tmpw(24) AND write_ena;
		writeTo(23) <= tmpw(23) AND write_ena;
		writeTo(22) <= tmpw(22) AND write_ena;
		writeTo(21) <= tmpw(21) AND write_ena;
		writeTo(20) <= tmpw(20) AND write_ena;
		writeTo(19) <= tmpw(19) AND write_ena;
		writeTo(18) <= tmpw(18) AND write_ena;
		writeTo(17) <= tmpw(17) AND write_ena;
		writeTo(16) <= tmpw(16) AND write_ena;
		writeTo(15) <= tmpw(15) AND write_ena;
		writeTo(14) <= tmpw(14) AND write_ena;
		writeTo(13) <= tmpw(13) AND write_ena;
		writeTo(12) <= tmpw(12) AND write_ena;
		writeTo(11) <= tmpw(11) AND write_ena;
		writeTo(10) <= tmpw(10) AND write_ena;
		writeTo(09) <= tmpw(09) AND write_ena;
		writeTo(08) <= tmpw(08) AND write_ena;
		writeTo(07) <= tmpw(07) AND write_ena;
		writeTo(06) <= tmpw(06) AND write_ena;
		writeTo(05) <= tmpw(05) AND write_ena;
		writeTo(04) <= tmpw(04) AND write_ena;
		writeTo(03) <= tmpw(03) AND write_ena;
		writeTo(02) <= tmpw(02) AND write_ena;
		writeTo(01) <= tmpw(01) AND write_ena;
		writeTo(00) <= tmpw(00) AND write_ena;
		
		
		reg0 : reg32_0 port map(write_data,clk, writeTo(31), '0', '0', bus0);
		reg1 :  reg		port map(write_data,clk, writeTo(30), '0', '0', bus1);
		reg2 :  reg    port map(write_data,clk, writeTo(29), '0', '0', bus2);
		reg3 :  reg 	port map(write_data,clk, writeTo(28), '0', '0', bus3);
		reg4 :  reg 	port map(write_data,clk, writeTo(27), '0', '0', bus4);
		reg5 :  reg 	port map(write_data,clk, writeTo(26), '0', '0', bus5);
		reg6 :  reg 	port map(write_data,clk, writeTo(25), '0', '0', bus6);
		reg7 :  reg 	port map(write_data,clk, writeTo(24), '0', '0', bus7);
		reg8 :  reg 	port map(write_data,clk, writeTo(23), '0', '0', bus8);
		reg9 :  reg 	port map(write_data,clk, writeTo(22), '0', '0', bus9);
		reg10 : reg 	port map(write_data,clk, writeTo(21), '0', '0', bus10);
		reg11 : reg 	port map(write_data,clk, writeTo(20), '0', '0', bus11);
		reg12 : reg 	port map(write_data,clk, writeTo(19), '0', '0', bus12);
		reg13 : reg 	port map(write_data,clk, writeTo(18), '0', '0', bus13);
		reg14 : reg 	port map(write_data,clk, writeTo(17), '0', '0', bus14);
		reg15 : reg 	port map(write_data,clk, writeTo(16), '0', '0', bus15);
		reg16 : reg 	port map(write_data,clk, writeTo(15), '0', '0', bus16);
		reg17 : reg 	port map(write_data,clk, writeTo(14), '0', '0', bus17);
		reg18 : reg 	port map(write_data,clk, writeTo(13), '0', '0', bus18);
		reg19 : reg 	port map(write_data,clk, writeTo(12), '0', '0', bus19);
		reg20 : reg 	port map(write_data,clk, writeTo(11), '0', '0', bus20);
		reg21 : reg 	port map(write_data,clk, writeTo(10), '0', '0', bus21);
		reg22 : reg 	port map(write_data,clk, writeTo(9),  '0', '0', bus22);
		reg23 : reg 	port map(write_data,clk, writeTo(8),  '0', '0', bus23);
		reg24 : reg 	port map(write_data,clk, writeTo(7),  '0', '0', bus24);
		reg25 : reg 	port map(write_data,clk, writeTo(6),  '0', '0', bus25);
		reg26 : reg 	port map(write_data,clk, writeTo(5),  '0', '0', bus26);
		reg27 : reg 	port map(write_data,clk, writeTo(4),  '0', '0', bus27);
		reg28 : reg 	port map(write_data,clk, writeTo(3),  '0', '0', bus28);
		reg29 : reg 	port map(write_data,clk, writeTo(2),  '0', '0', bus29);
		reg30 : reg 	port map(write_data,clk, writeTo(1),  '0', '0', bus30);
		reg31 : reg 	port map(write_data,clk, writeTo(0),  '0', '0', bus31);
		
		mux0 :  mux port map(
				bus0,  bus1,  bus2,  bus3,  bus4,  bus5,  bus6,  bus7,  bus8,  bus9,
				bus10, bus11, bus12, bus13, bus14, bus15, bus16, bus17, bus18, bus19,
				bus20, bus21, bus22, bus23, bus24, bus25, bus26, bus27, bus28, bus29,
				bus30, bus31,
				read_sel1,
				data1);
		
		mux1 : mux port map(
				bus0,  bus1,  bus2,  bus3,  bus4,  bus5,  bus6,  bus7,  bus8,  bus9,
				bus10, bus11, bus12, bus13, bus14, bus15, bus16, bus17, bus18, bus19,
				bus20, bus21, bus22, bus23, bus24, bus25, bus26, bus27, bus28, bus29,
				bus30, bus31,
				read_sel2,
				data2);
end Behavioral;

