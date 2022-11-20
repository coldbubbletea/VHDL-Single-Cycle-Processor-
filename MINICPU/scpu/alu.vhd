----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:48 05/03/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU_5 is
port (
	ALUOP : in std_logic_vector(2 downto 0);
	A : in std_logic_vector(31 downto 0);
	B : in std_logic_vector(31 downto 0);
	R : out std_logic_vector(31 downto 0);
	zero : out std_logic);
end ALU_5;

architecture Behavioral of ALU_5 is
begin
process(A,B,aluop)
variable RE : std_logic_vector(31 downto 0);
begin
if (ALUOP="000") then
	RE:=A+B;
elsif (AlUOP="001") then
	RE:=A-B;
elsif (ALUOP="010") then
	if(A<B) then
	RE:="00000000000000000000000000000001";
	else
	RE:="00000000000000000000000000000000";
	end if;
elsif (ALUOP="100") then
	RE:=A and B;
elsif (ALUOP="101") then
	RE:=A or B;
END IF;
if(RE=0)then
R<="00000000000000000000000000000000";
zero<='1';
else
R<=RE;
zero<='0';
end if;
end process;
--begin
--R<= A+B when (ALUOP="000") else
--	A-B when (ALUOP="001") else
	

end Behavioral;

