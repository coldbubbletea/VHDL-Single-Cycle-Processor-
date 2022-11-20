----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:14 04/30/2021 
-- Design Name: 
-- Module Name:    programcounter - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity programcounter_1 is
    Port ( clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
	        in_pc : in STD_LOGIC_VECTOR(31 DOWNTO 0);
			  out_pc : out STD_LOGIC_VECTOR(31 DOWNTO 0));
	    
	 
end programcounter_1;

architecture Behavioral of programcounter_1 is

begin
COUNTER : PROCESS(CLK,RESET,IN_PC)
BEGIN
IF (RESET='1')THEN
OUT_PC<="00000000000000000100000000000000";
ELSE
IF(CLK='1' AND CLK'EVENT) THEN 
OUT_PC<=IN_PC;


END IF;
END IF;
END PROCESS;
end Behavioral;

