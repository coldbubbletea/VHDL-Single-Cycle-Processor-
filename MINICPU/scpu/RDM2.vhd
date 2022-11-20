----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:45:58 04/30/2021 
-- Design Name: 
-- Module Name:    RDM - Behavioral 
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

entity RDM_2 is
    Port ( instruction : std_logic_vector(31 downto 0);
           CONTROL : in  STD_LOGIC;
           W : out  STD_LOGIC_vector(4 downto 0));
end RDM_2;

architecture Behavioral of RDM_2 is
signal RD : std_logic_vector(4 downto 0);
signal RT : std_logic_vector(4 downto 0);
begin


RD(4 downto 0) <= INSTRUCTION(15 DOWNTO 11);
RT(4 downto 0) <= INSTRUCTION(20 DOWNTO 16);
W<=
RD WHEN (CONTROL='1') ELSE
RT ;

end Behavioral;

