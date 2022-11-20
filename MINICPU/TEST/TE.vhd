----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:30 04/30/2021 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( ALUAin : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUBin : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (2 downto 0);
           zero : out  STD_LOGIC;
           ALUout : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
  process(ALUAin,ALUBin,ALUop)
  begin
  case ALUop is
  when "000"=>
   ALUout<=ALUAin+ALUBin;
  when "001"=>
   ALUout<=ALUAin-ALUBin;
  when "010"=>
   if(ALUAin<ALUBin) then
	 ALUout<="00000000000000000000000000000001";
	 zero<='0';
	else
	 ALUout<="00000000000000000000000000000000";
	 zero<='1';
	end if;
  when "100"=>
   ALUout<=ALUAin AND ALUBin;
  when "101"=>
   ALUout<=ALUAin OR ALUBin;
  when "110"=>
   ALUout(31 downto 16)<=ALUBin(15 downto 0);
	ALUout(15 downto 0)<="0000000000000000";
	zero<='1';
  when others=>
   --
  end case;
  
  END PROCESS;
end Behavioral;

