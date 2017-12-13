----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:55:16 04/30/2017 
-- Design Name: 
-- Module Name:    signExt - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity signExt is
	port (input : in STD_LOGIC_VECTOR(15 downto 0);
			output : out STD_LOGIC_VECTOR(31 downto 0));
end signExt;

architecture Behavioral of signExt is

begin
	output(15 downto 0) <= input;
	output(31 downto 16) <= (others => input(15));
--output <= ("0000000000000000"&input) when (input(15)='0') 
     --else ("1111111111111111"&input);
end Behavioral;

