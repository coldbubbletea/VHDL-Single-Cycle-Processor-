----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:05 05/04/2021 
-- Design Name: 
-- Module Name:    alucontrol - Behavioral 
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

entity alucontrol is
port(
	aluop : in STD_LOGIC_VECTOR(2 downto 0);
	funct : in STD_LOGIC_VECTOR(5 downto 0);
	alucontrol : out STD_LOGIC_VECTOR(2 downto 0));
end alucontrol;

architecture Behavioral of alucontrol is

begin
alucontrol<= "000" when((aluop="111") and (funct="100000")) else
             "001" when ((aluop="111") and (funct="100010")) else
				 "010" when ((aluop="111") and (funct="101010")) else
				 "100" when ((aluop="111") and (funct="100100")) else
				 "101" when ((aluop="111") and (funct="100101")) else
				 aluop;
				

end Behavioral;

