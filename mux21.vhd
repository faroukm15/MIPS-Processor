----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:57 04/06/2017 
-- Design Name: 
-- Module Name:    mux21 - Behavioral 
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

entity mux21 is
	 port (bus0, bus1 : in std_logic;
			 sel :	in std_logic;
			 ou : out std_logic);
end mux21;


architecture Behavioral of mux21 is
begin

	ou <= bus0 when sel = '0' else
			bus1;
end Behavioral;

