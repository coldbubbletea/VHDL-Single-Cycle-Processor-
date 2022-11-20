----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:02:10 05/05/2021 
-- Design Name: 
-- Module Name:    JUMPMULTEX - Behavioral 
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

entity JUMPMULTEX is
port(
	a : in std_logic_vector(31 downto 0);
	b : in std_logic_vector(31 downto 0);
	jump : in std_logic;
	out_pc : out std_logic_vector(31 downto 0));
end JUMPMULTEX;

architecture Behavioral of JUMPMULTEX is

begin
out_pc<= a when (jump='1') else
			b;

end Behavioral;

