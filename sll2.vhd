----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:32 05/02/2017 
-- Design Name: 
-- Module Name:    sll2 - Behavioral 
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

entity sll2 is
	port (input : in STD_LOGIC_VECTOR(31 downto 0);
			output : out STD_LOGIC_VECTOR(31 downto 0));
end sll2;

architecture Behavioral of sll2 is

begin
	output(31 downto 2) <= input(29 downto 0);
	output(1 downto 0) <= "00";

end Behavioral;

