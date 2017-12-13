--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:32:40 04/09/2017
-- Design Name:   
-- Module Name:   D:/Xilinix/Projects/MemModel/test.vhd
-- Project Name:  MemModel
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MULTest IS
END MULTest;
 
ARCHITECTURE behavior OF MULTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUL
    PORT(
         start : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal start : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUL PORT MAP (
          start => start,
          clk => clk,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
		start <= '0';
      wait for clk_period;

      -- insert stimulus here 
		start <= '1';
		
      wait;
   end process;

END;
