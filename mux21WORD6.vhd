----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:45:53 04/30/2017 
-- Design Name: 
-- Module Name:    mux21WORD6 - Behavioral 
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

entity mux21VAR is
	generic (n : natural := 31);
	port (bus0, bus1 : in std_logic_vector(n downto 0);
			 sel :	in std_logic;
			 ou : out std_logic_vector(n downto 0));
end mux21VAR;

architecture Behavioral of mux21VAR is
begin
	ou <= bus0 when sel = '0' else
			bus1;

end Behavioral;

