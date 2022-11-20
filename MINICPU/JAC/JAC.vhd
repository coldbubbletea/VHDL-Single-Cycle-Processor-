----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:58 05/05/2021 
-- Design Name: 
-- Module Name:    JAC - Behavioral 
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

entity JAC is
port(
	ins : in std_logic_vector(31 downto 0);
	pc : in std_logic_vector(31 downto 0);
	jumpadd : out std_logic_vector(31 downto 0));
end JAC;

architecture Behavioral of JAC is

begin
jumpadd(31 downto 28)<=pc(31 downto 28);
jumpadd(27 downto 0)<= ins(27 downto 0);

end Behavioral;

