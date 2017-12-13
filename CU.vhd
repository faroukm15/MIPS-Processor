----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:32:02 04/29/2017 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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

entity CU is 
	port (op : in STD_LOGIC_VECTOR(5 downto 0);
			RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, BranchNot, jmp : out STD_LOGIC;
			ALUOp : out STD_LOGIC_VECTOR(1 downto 0));
end CU;

architecture Behavioral of CU is

signal rformat, lw, sw, beq, bne, j: STD_LOGIC;

begin
	rformat <=  not(op(0)) AND not(op(1)) AND not(op(2)) AND not(op(3)) AND not(op(4)) AND not(op(5));
	lw <= op(0) AND op(1) AND not(op(2)) AND not(op(3)) AND not(op(4)) AND op(5);	
	sw <= op(0) AND op(1) AND not(op(2)) AND op(3) AND not(op(4)) AND op(5);
	beq <= not(op(0)) AND not(op(1)) AND op(2) AND not(op(3)) AND not(op(4)) AND not(op(5));
	bne <= op(0) AND not(op(1)) AND op(2) AND not(op(3)) AND not(op(4)) AND not(op(5));
	j <= not(op(0)) AND op(1) AND not(op(2)) AND not(op(3)) AND not(op(4)) AND not(op(5));
	
	RegDst <= rformat;
	ALUSrc <= lw or sw;
	MemtoReg <= lw;
	RegWrite <= rformat or lw;
	MemRead <= lw;
	MemWrite <= sw;
	Branch <= beq;
	BranchNot <= bne;
	ALUOp(1) <= rformat;
	ALUOp(0) <= beq;
	jmp <= j;
end Behavioral;

