----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:07:43 04/19/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use ieee.numeric_std.all;
use work.mypackage.all;

entity MainModule is
	port( START: IN STD_LOGIC;
		   CLK: IN STD_LOGIC;
		   RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
			RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
			ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
			PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
			DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
	signal InstMemO : STD_LOGIC_VECTOR (31 downto 0);
	signal ALUReslt : STD_LOGIC_VECTOR (31 downto 0);
	
	signal Reg1D : STD_LOGIC_VECTOR (31 downto 0);
	signal Reg2D : STD_LOGIC_VECTOR (31 downto 0);
	signal opcode : STD_LOGIC_VECTOR (3 downto 0);
	
	signal RegDst, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, BranchNot, jmp, BranchOrNot: STD_LOGIC;
	signal ALUOp : STD_LOGIC_VECTOR (1 downto 0);
	signal muxDstOut : STD_LOGIC_VECTOR (4 downto 0);
	signal varExt, reg1dMuxOUT, readData, writeData : STD_LOGIC_VECTOR (31 downto 0);
	signal OperateOn : STD_LOGIC_VECTOR(3 downto 0);
	signal ZF, OFF, CF : STD_LOGIC;
	signal tmpZF, tmpOFF, tmpCF: STD_LOGIC;
	signal tmpZF2, tmpOFF2, tmpCF2: STD_LOGIC;
	
	signal PcOutTmp : std_logic_vector (31 downto 0);
	signal instTmp : std_logic_vector (27 downto 0);
	signal Addr, Pc4, instTmp25, jmpAddr27, jmpAddr, immedAdd, equalityAddr, BranchResult,  tmpReg1D, tmpReg2D1, tmpReg2D2 : std_logic_vector (31 downto 0);
	signal NextInst : std_logic_vector (31 downto 0) := (others => '0');
	
	signal notStart : STD_LOGIC;
begin
	notStart <= not(START);
	
	PC : greg generic map (32) port map (NextInst,CLK, START, '0', notStart,PcOutTmp);
	ins : INSTRMEMORY PORT map (notStart,InstMemO,PcOutTmp,CLK);
	
	control : CU port map(InstMemO(31 downto 26), RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, BranchNot, jmp, ALUOp);
	
	muxDST : mux21VAR generic map (4) port map(InstMemO(20 downto 16), InstMemO(15 downto 11), RegDst, muxDstOut);
	signExtt : signExt port map(InstMemO(15 downto 0), varExt);
	
	REGF : RegisterFile port map(InstMemO(25 downto 21), InstMemO(20 downto 16), muxDstOut, RegWrite, CLK, writeData, Reg1D, Reg2D);
	tmpReg1D <= Reg1D;
	tmpReg2D1 <= Reg2D;
	tmpReg2D2 <= Reg2D;
	
	reg1dMux : mux21VAR generic map (31) port map(tmpReg2D1, varExt, ALUSrc, reg1dMuxOUT);
	alucontroll : ALUControl port map(InstMemO(5 downto 0), ALUOp, OperateOn);
	ALUR : ALU port map(Reg1D, reg1dMuxOUT, OperateOn, OperateOn(2), ALUReslt, CF, ZF, OFF);
	
	DATA : DATAMEMORY  port map(notStart, tmpReg2D2, readData, MemRead, MemWrite, ALUReslt, CLK);	
	writeDRFMux : mux21VAR generic map (31) port map(ALUReslt, readData, MemToReg, writeData);
	
	-- first add alu from pc
	ALUAddPc : ALU port map(PcOutTmp, "00000000000000000000000000000100", "0010", '0', Pc4, tmpZF, tmpOFF, tmpCF);
	jmpAddr <= Pc4(31 downto 28) & InstMemO(25 downto 0) & "00";
		
	-- second add alu for jmp, beq, bne
	immedAdd <= varExt(29 downto 0) & "00";
	ALUAdd2 : ALU port map(Pc4, immedAdd, "0010", '0', equalityAddr, tmpZF2, tmpOFF2, tmpCF2);
	BranchOrNot <= (Branch AND ZF) OR (BranchNot AND not(ZF));
	branchMux : mux21VAR generic map (31) port map(Pc4, equalityAddr, BranchOrNot, BranchResult);
	nextInstMux : mux21VAR generic map (31) port map(BranchResult, jmpAddr, jmp, NextInst);
	
	ALUOut <= ALUReslt;
	RegFileOut1 <= tmpReg1D;
	RegFileOut2 <= Reg2D;
	PCOut <= PCOutTmp;
	DataMemOut <= readData;
	
end Behavioral;