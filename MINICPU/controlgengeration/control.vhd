----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:34:41 05/05/2021 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
port(
	pc : in std_logic_vector(31 downto 0);
	regdst :out std_logic;
	jump : out std_logic;
	branch : out std_logic;
	memread : out std_logic;
	memtoreg : out std_logic;
	aluop : out std_logic_vector(2 downto 0);
	memwrite : out std_logic;
	alusrc : out std_logic;
	regwrite : out std_logic);
end control;

architecture Behavioral of control is
signal op : std_logic_vector(5 downto 0);
begin
op<=pc(31 downto 26);
process(op)
begin
case op is
	when "000000"=>
		regdst<='1';
		alusrc<='0';
		memtoreg<='0';
		regwrite<='1';
		memread<='0';
		memwrite<='0';
		branch<='0';
		jump<='0';
		aluop<="111";
	when "100011"=>
		regdst<='0';
		alusrc<='1';
		memtoreg<='1';
		regwrite<='1';
		memread<='1';
		memwrite<='0';
		branch<='0';
		jump<='0';
		aluop<="000";
	when "101011"=>
		regdst<='X';
		alusrc<='1';
		memtoreg<='X';
		regwrite<='0';
		memread<='0';
		memwrite<='1';
		branch<='0';
		jump<='0';
		aluop<="000";
	when "000100"=>
		regdst<='X';
		alusrc<='0';
		memtoreg<='X';
		regwrite<='0';
		memread<='0';
		memwrite<='0';
		branch<='1';
		jump<='0';
		aluop<="001";
	when "000010"=>
		regdst<='0';
		alusrc<='0';
		memtoreg<='0';
		regwrite<='0';
		memread<='0';
		memwrite<='0';
		branch<='0';
		jump<='1';
		aluop<="000";
	when "001111"=>
		regdst<='0';
		alusrc<='1';
		memtoreg<='0';
		regwrite<='1';
		memread<='X';
		memwrite<='0';
		branch<='0';
		jump<='1';
		aluop<="110";
	when "001010"=>
		regdst<='0';
		alusrc<='1';
		memtoreg<='0';
		regwrite<='1';
		memread<='X';
		memwrite<='0';
		branch<='0';
		jump<='0';
		aluop<="010";
	when others=>
	null;
end case;
end process;
end Behavioral;

