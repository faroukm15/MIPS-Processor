----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:41:06 04/19/2017 
-- Design Name: 
-- Module Name:    TranslationUnit - Behavioral 
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

entity TranslationUnit is
	port( inpt: IN  STD_LOGIC_VECTOR(5 downto 0);
			outp: OUT STD_LOGIC_VECTOR(3 downto 0));
end TranslationUnit;

architecture Behavioral of TranslationUnit is
begin
	outp <= "0000" when inpt = "100100" else
			  "0001" when inpt = "100101" else 
			  "0010" when inpt = "100000" else
			  "0110" when inpt = "100010" else
			  "0111" when inpt = "101010" else
			  "1100" when inpt = "100111" else
			  "ZZZZ";

end Behavioral;

