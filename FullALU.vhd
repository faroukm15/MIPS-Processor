----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:58:06 04/05/2017 
-- Design Name: 
-- Module Name:    FullALU - Behavioral 
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
use work.mypackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
	port(data1 : in std_logic_vector(31 downto 0);
		  data2 : in std_logic_vector(31 downto 0);
		  aluop : in std_logic_vector(3 downto 0);
		  cin : in std_logic;
		  dataout: out std_logic_vector(31 downto 0);
		  cflag: out std_logic;
		  zflag: out std_logic;
		  oflag: out std_logic);
end ALU;

architecture Behavioral of ALU is
	signal CO : STD_LOGIC_VECTOR (31 downto 0);
	signal R : STD_LOGIC_VECTOR (31 downto 0);
	--signal startCin : STD_LOGIC;
	signal setb : STD_LOGIC;
begin
	ALU1 : SingleBitALU  port map(data1(0),  data2(0),  Cin,    R(0),  CO(0),  aluop, setb);
	ALU2 : SingleBitALU  port map(data1(1),  data2(1),  CO(0),  R(1),  CO(1),  aluop, '0');
	ALU3 : SingleBitALU  port map(data1(2),  data2(2),  CO(1),  R(2),  CO(2),  aluop, '0');
	ALU4 : SingleBitALU  port map(data1(3),  data2(3),  CO(2),  R(3),  CO(3),  aluop, '0');
	ALU5 : SingleBitALU  port map(data1(4),  data2(4),  CO(3),  R(4),  CO(4),  aluop, '0');
	ALU6 : SingleBitALU  port map(data1(5),  data2(5),  CO(4),  R(5),  CO(5),  aluop, '0');
	ALU7 : SingleBitALU  port map(data1(6),  data2(6),  CO(5),  R(6),  CO(6),  aluop, '0');
	ALU8 : SingleBitALU  port map(data1(7),  data2(7),  CO(6),  R(7),  CO(7),  aluop, '0');
	ALU9 : SingleBitALU  port map(data1(8),  data2(8),  CO(7),  R(8),  CO(8),  aluop, '0');
	ALU10 : SingleBitALU port map(data1(9),  data2(9),  CO(8),  R(9),  CO(9),  aluop, '0');
	ALU11 : SingleBitALU port map(data1(10), data2(10), CO(9),  R(10), CO(10), aluop, '0');
	ALU12 : SingleBitALU port map(data1(11), data2(11), CO(10), R(11), CO(11), aluop, '0');
	ALU13 : SingleBitALU port map(data1(12), data2(12), CO(11), R(12), CO(12), aluop, '0');
	ALU14 : SingleBitALU port map(data1(13), data2(13), CO(12), R(13), CO(13), aluop, '0');
	ALU15 : SingleBitALU port map(data1(14), data2(14), CO(13), R(14), CO(14), aluop, '0');
	ALU16 : SingleBitALU port map(data1(15), data2(15), CO(14), R(15), CO(15), aluop, '0');
	ALU17 : SingleBitALU port map(data1(16), data2(16), CO(15), R(16), CO(16), aluop, '0');
	ALU18 : SingleBitALU port map(data1(17), data2(17), CO(16), R(17), CO(17), aluop, '0');
	ALU19 : SingleBitALU port map(data1(18), data2(18), CO(17), R(18), CO(18), aluop, '0');
	ALU20 : SingleBitALU port map(data1(19), data2(19), CO(18), R(19), CO(19), aluop, '0');
	ALU21 : SingleBitALU port map(data1(20), data2(20), CO(19), R(20), CO(20), aluop, '0');
	ALU22 : SingleBitALU port map(data1(21), data2(21), CO(20), R(21), CO(21), aluop, '0');
	ALU23 : SingleBitALU port map(data1(22), data2(22), CO(21), R(22), CO(22), aluop, '0');
	ALU24 : SingleBitALU port map(data1(23), data2(23), CO(22), R(23), CO(23), aluop, '0');
	ALU25 : SingleBitALU port map(data1(24), data2(24), CO(23), R(24), CO(24), aluop, '0');
	ALU26 : SingleBitALU port map(data1(25), data2(25), CO(24), R(25), CO(25), aluop, '0');
	ALU27 : SingleBitALU port map(data1(26), data2(26), CO(25), R(26), CO(26), aluop, '0');
	ALU28 : SingleBitALU port map(data1(27), data2(27), CO(26), R(27), CO(27), aluop, '0');
	ALU29 : SingleBitALU port map(data1(28), data2(28), CO(27), R(28), CO(28), aluop, '0');
	ALU30 : SingleBitALU port map(data1(29), data2(29), CO(28), R(29), CO(29), aluop, '0');
	ALU31 : SingleBitALU port map(data1(30), data2(30), CO(29), R(30), CO(30), aluop, '0');
	ALU32 : MSBALU       port map(data1(31), data2(31), CO(30), R(31), CO(31), aluop, '0', setb, oflag);

	dataout <= R;
	zflag <= '1' when R = "00000000000000000000000000000000" else
				'0';
	cflag <= CO(31);
	--oflag <= CO(31) XOR CO(30);
end Behavioral;

