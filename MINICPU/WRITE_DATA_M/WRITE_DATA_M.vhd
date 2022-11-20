----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:30:49 05/04/2021 
-- Design Name: 
-- Module Name:    WRITE_DATA_M - Behavioral 
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

entity WRITE_DATA_M is
port( 
	ddataout : in std_logic_vector(31 downto 0);
	alur : in std_logic_vector(31 downto 0);
	memtoreg : in std_logic;
	writedata : out std_logic_vector(31 downto 0));
	
end WRITE_DATA_M;

architecture Behavioral of WRITE_DATA_M is

begin
writedata<=  ddataout when (memtoreg='1') else
alur;

end Behavioral;

