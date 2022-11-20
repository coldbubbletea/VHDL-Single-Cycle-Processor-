--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:02:36 05/22/2021
-- Design Name:   
-- Module Name:   C:/MINICPU/scpu/SCPUTTB.vhd
-- Project Name:  scpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: scpu
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
 
ENTITY SCPUTTB IS
END SCPUTTB;
 
ARCHITECTURE behavior OF SCPUTTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT scpu
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         iaddr : OUT  std_logic_vector(31 downto 0);
         idata : IN  std_logic_vector(31 downto 0);
         daddr : OUT  std_logic_vector(31 downto 0);
         ddatain : OUT  std_logic_vector(31 downto 0);
         ddataout : IN  std_logic_vector(31 downto 0);
         regview_t1 : OUT  std_logic_vector(31 downto 0);
         oe : OUT  std_logic;
         we : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal idata : std_logic_vector(31 downto 0) := (others => '0');
   signal ddataout : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal iaddr : std_logic_vector(31 downto 0);
   signal daddr : std_logic_vector(31 downto 0);
   signal ddatain : std_logic_vector(31 downto 0);
   signal regview_t1 : std_logic_vector(31 downto 0);
   signal oe : std_logic;
   signal we : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: scpu PORT MAP (
          clk => clk,
          reset => reset,
          iaddr => iaddr,
          idata => idata,
          daddr => daddr,
          ddatain => ddatain,
          ddataout => ddataout,
          regview_t1 => regview_t1,
          oe => oe,
          we => we
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
