----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:48 04/03/2017 
-- Design Name: 
-- Module Name:    register - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg is
	port( D : in std_logic_vector(31 downto 0);
			clk, load, inc, clr: in std_logic;
			Q : out std_logic_vector(31 downto 0)
	);
end reg;

architecture Behavioral of reg is
signal tmp : std_logic_vector(31 downto 0) := (others => '0');
begin
	process(clk)
		begin
		if(clk' event and clk = '1') THEN
			if(load = '1') then
				tmp <= D;
			elsif(inc = '1') then
				tmp <= D + 1;
			elsif(clr = '1') then
				tmp <= (others =>'0');
			end if;
		end if;
	end process;
		Q <= tmp;
end Behavioral;

