----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:58 05/05/2021 
-- Design Name: 
-- Module Name:    branchmultiplex - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity branchmultiplex_14 is
port
(
	c : in std_logic;
	aluresult : in std_logic_vector(31 downto 0);
	pc : in std_logic_vector(31 downto 0);
	result : out std_logic_vector(31 downto 0));
end branchmultiplex_14;

architecture Behavioral of branchmultiplex_14 is

begin
result<= pc when(c='0') else
		aluresult;

end Behavioral;

