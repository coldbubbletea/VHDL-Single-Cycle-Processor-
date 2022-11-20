----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:46 05/02/2021 
-- Design Name: 
-- Module Name:    mulp - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mulp is
port(
	ALUSRC  : in std_logic ;
	RD2 : in std_logic_vector (31 downto 0);
	SE : in std_logic_vector (31 downto 0);
	OALU : out std_logic_vector(31 downto 0));
end mulp;

architecture Behavioral of mulp is

begin
OALU <= SE when (ALUSRC = '1') else
		 RD2 ; 
		 

end Behavioral;

