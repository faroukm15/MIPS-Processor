----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:27:24 04/30/2017 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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

entity ALUControl is
	port (func : in STD_LOGIC_VECTOR(5 downto 0);
			ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
			Op : out STD_LOGIC_VECTOR(3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is

signal tmp : STD_LOGIC;
begin
	tmp <= ALUOp(1) AND (func(1) AND func(0));
	Op(3) <= tmp;
	Op(2) <= ALUOp(0) OR (ALUOp(1) AND func(1));
	op(1) <= NOT(ALUOp(1)) OR NOT(func(2));
	op(0) <= NOT(tmp) AND (ALUOp(1) AND (func(0) OR func(3)));
	--tmp <= (func(5) AND func(4)) AND ALUOp(0);
	--op(1) <= (func(4) AND ALUOp(0)) OR ALUOp(1);
	--op(2) <= not(func(3)) AND not(ALUOp(0));
	--op(3) <= ((func(5) or func(2)) AND ALUOp(0)) AND not(tmp);
	--op(0) <= tmp;

end Behavioral;

