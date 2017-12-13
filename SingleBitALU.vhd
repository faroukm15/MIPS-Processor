----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:01 03/20/2017 
-- Design Name: 
-- Module Name:    SingleBitALU - Behavioral 
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.mypackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SingleBitALU is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Result : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           ALUOp : in  STD_LOGIC_VECTOR (3 downto 0);
			  less: in STD_LOGIC);
end SingleBitALU;

architecture Behavioral of SingleBitALU is	
	signal FAR : STD_LOGIC;
	signal ANDsig : std_logic ; 
	signal ORsig : std_logic ; 
	SIGNAL NA : STD_LOGIC;
	SIGNAL NB : STD_LOGIC;
begin
	Ainv : mux21 port map(A, NOT(A), ALUOp(3), NA);
	Binv : mux21 port map(B, NOT(B), ALUOp(2), NB);
	FA : FullAdder port map(NA, NB, Cin, Cout, FAR);
	ANDsig <= NA and NB; 
	ORsig <= NA or NB;
	MX41 : mux41 port map(ANDsig, ORsig, FAR, less, ALUOp, Result);
end Behavioral;