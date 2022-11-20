----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:05:00 05/03/2021 
-- Design Name: 
-- Module Name:    signextend - Behavioral 
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

entity signextend is
port(
	i16 : in std_logic_vector(15 downto 0);
	o32 : out std_logic_vector(31 downto 0));
end signextend;

architecture Behavioral of signextend is

begin
o32<= "11111111111111110000000000000000"+i16 when(i16(15)='1') else
      "00000000000000000000000000000000"+i16;

end Behavioral;

