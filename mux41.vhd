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

entity mux41 is
	 port (bus0, bus1, bus2, bus3  : in std_logic;
			 sel :	in std_logic_vector(3 downto 0);
			 ou : out std_logic);
end mux41;


architecture Behavioral of mux41 is
begin
	ou <= bus0 when sel(1 downto 0) = "00" else
			bus1 when sel(1 downto 0) = "01" else
			bus2 when sel(1 downto 0) = "10" else
			bus3 when sel(1 downto 0) = "11";
end Behavioral;

