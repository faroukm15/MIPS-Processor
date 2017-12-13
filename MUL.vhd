----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:24 04/09/2017 
-- Design Name: 
-- Module Name:    MUL - Behavioral 
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

entity MUL is
    Port ( start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end MUL;

architecture Behavioral of MUL is
	signal tmp : std_logic_vector (5 downto 0);
	signal Addr : std_logic_vector (31 downto 0);
begin
	PC : greg generic map (6) port map ("000000",clk,'0',start,not (start),tmp);
	Addr <= ("000000000000000000000000"&tmp&"00");
	ins : INSTRMEMORY PORT map (not(start),output,Addr,clk);
end Behavioral;

