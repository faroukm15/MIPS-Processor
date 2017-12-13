--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package mypackage is

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

component ALUControl is
	port (func : in STD_LOGIC_VECTOR(5 downto 0);
			ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
			Op : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component CU is 
	port (op : in STD_LOGIC_VECTOR(5 downto 0);
			RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, BranchNot, jmp : out STD_LOGIC;
			ALUOp : out STD_LOGIC_VECTOR(1 downto 0));
end component;

component mux21VAR is
	generic (n : natural := 31);
	port (bus0, bus1 : in std_logic_vector(n downto 0);
			 sel :	in std_logic;
			 ou : out std_logic_vector(n downto 0));
end component;

component signExt is
	port (input : in STD_LOGIC_VECTOR(15 downto 0);
			output : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component sll2 is
	port (input : in STD_LOGIC_VECTOR(31 downto 0);
			output : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component Reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;

component Conditional is
	port (inp : in STD_LOGIC_VECTOR(5 downto 0);
			oup : out STD_LOGIC);
end component;

component TranslationUnit is
	port( inpt: IN  STD_LOGIC_VECTOR(5 downto 0);
			outp: OUT STD_LOGIC_VECTOR(3 downto 0));
end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;

component MUL is
    Port ( start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU is
	port(data1 : in std_logic_vector(31 downto 0);
		  data2 : in std_logic_vector(31 downto 0);
		  aluop : in std_logic_vector(3 downto 0);
		  cin : in std_logic;
		  dataout: out std_logic_vector(31 downto 0);
		  cflag: out std_logic;
		  zflag: out std_logic;
		  oflag: out std_logic);
end component;

component greg IS
	GENERIC(n:NATURAL := 8);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

component RegisterFile is
	port(
		read_sel1 : in std_logic_vector(4 downto 0);
		read_sel2 : in std_logic_vector(4 downto 0);
		write_sel : in std_logic_vector(4 downto 0);
		write_ena : in std_logic;
		clk : in std_logic;
		write_data : in std_logic_vector(31 downto 0);
		data1: out std_logic_vector(31 downto 0);
		data2: out std_logic_vector(31 downto 0)
	);
end component;

component SingleBitALU is
	Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Result : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           ALUOp : in  STD_LOGIC_VECTOR (3 downto 0);
			  less: in STD_LOGIC);
end component;

component MSBALU is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Result : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           ALUOp : in  STD_LOGIC_VECTOR (3 downto 0);
			  less: in STD_LOGIC;
			  set: out STD_LOGIC;
			  overflow : out STD_LOGIC);
end component;

component mux21 is
	 port (bus0, bus1 : in std_logic;
			 sel :	in std_logic;
			 ou : out std_logic);
end component;

component mux41 is
	 	 port (bus0, bus1, bus2, bus3  : in std_logic;
			 sel :	in std_logic_vector(3 downto 0);
			 ou : out std_logic);
end component;

component FullAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

component reg is
	port( D : in std_logic_vector(31 downto 0);
			clk, load, inc, clr: in std_logic;
			Q : out std_logic_vector(31 downto 0)
	);
end component;

component Decoder is
    Port ( i : in  STD_LOGIC_VECTOR (4 downto 0);
			  O : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component Mux is
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
end component;
end mypackage;

package body mypackage is 
end mypackage;
