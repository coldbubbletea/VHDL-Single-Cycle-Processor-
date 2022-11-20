----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:09:02 05/05/2021 
-- Design Name: 
-- Module Name:    jumpshift - Behavioral 
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

entity jumpshift is
port
(	
	ins : in std_logic_vector(31 downto 0);
	out_ins : out std_logic_vector(27 downto 0));
end jumpshift;

architecture Behavioral of jumpshift is

begin
out_ins(27 downto 2)<=ins(25 downto 0);
out_ins(1 downto 0)<= "00";

end Behavioral;

