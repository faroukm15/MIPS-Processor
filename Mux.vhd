----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:47:13 04/03/2017 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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
use IEEE.numeric_std.all;
use work.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux is
	generic ( wordSize : natural := 32
			);
	 port (
				bus0, bus1, bus2, bus3, bus4, bus5, bus6, bus7, bus8, bus9,
				bus10, bus11, bus12, bus13, bus14, bus15, bus16, bus17, bus18, bus19,
				bus20, bus21, bus22, bus23, bus24, bus25, bus26, bus27, bus28, bus29,
				bus30, bus31: in std_logic_vector(wordSize - 1 downto 0);
				sel :	in std_logic_vector(4 downto 0);
				ou : out std_logic_vector(wordSize - 1 downto 0)
			);
end Mux;

architecture Behavioral of Mux is
	
begin
  ou <= bus0 when sel="00000" else
		bus1 when 	sel="00001" else
     bus2 when 	sel="00010" else
     bus3 when 	sel="00011" else
     bus4 when 	sel="00100" else
     bus5 when 	sel="00101" else
     bus6 when 	sel="00110" else
     bus7 when 	sel="00111" else
     bus8 when 	sel="01000" else
     bus9 when 	sel="01001" else
	  bus10 when 	sel="01010" else
	  bus11 when 	sel="01011" else
     bus12 when 	sel="01100" else
     bus13 when 	sel="01101" else
     bus14 when 	sel="01110" else
     bus15 when 	sel="01111" else
     bus16 when 	sel="10000" else
     bus17 when 	sel="10001" else
     bus18 when 	sel="10010" else
     bus19 when 	sel="10011" else
	  bus20 when 	sel="10100" else
		bus21 when 	sel="10101" else
     bus22 when 	sel="10110" else
     bus23 when 	sel="10111" else
     bus24 when 	sel="11000" else
     bus25 when 	sel="11001" else
     bus26 when 	sel="11010" else
     bus27 when 	sel="11011" else
     bus28 when 	sel="11100" else
     bus29 when 	sel="11101" else
     bus30 when 	sel="11110" else
	  bus31 when 	sel="11111" else
	  "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end Behavioral;

