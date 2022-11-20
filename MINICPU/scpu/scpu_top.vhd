----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:09:51 05/22/2021 
-- Design Name: 
-- Module Name:    scpu_top - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity scpu_top is
port
(
clk : in std_logic;
regview_t1 : out STD_LOGIC_VECTOR (31 downto 0);
reset : in std_logic);
end scpu_top;


architecture Behavioral of scpu_top is
component imem is
generic (
	datafile: string := "test01.asc" );
port (  clk: in std_logic;
	reset: in std_logic;
	iaddr: in std_logic_vector(31 downto 0);
	idata: out std_logic_vector(31 downto 0));
end component;

component dmem is
port (
	clk: in std_logic;
	reset: in std_logic;
	daddr: in std_logic_vector(31 downto 0);
	ddatain: in std_logic_vector(31 downto 0);
	ddataout: out std_logic_vector(31 downto 0);
	oe: in std_logic;
	we: in std_logic );
end component;

component scpu is
port (
clk : in STD_LOGIC;
reset : in STD_LOGIC;
iaddr: out std_logic_vector(31 downto 0);
idata: in std_logic_vector(31 downto 0);
daddr: out std_logic_vector(31 downto 0);
ddatain: out std_logic_vector(31 downto 0);
ddataout: in std_logic_vector(31 downto 0);
regview_t1 : out STD_LOGIC_VECTOR (31 downto 0);
oe: out std_logic;
we: out std_logic
);
end component;

signal iaddr:  std_logic_vector(31 downto 0);
signal idata:  std_logic_vector(31 downto 0);
signal daddr:  std_logic_vector(31 downto 0);
signal ddatain:  std_logic_vector(31 downto 0);
signal ddataout:  std_logic_vector(31 downto 0);
signal oe:  std_logic;
signal we:  std_logic;
begin
myscpu : scpu port map(clk,reset,iaddr,idata,daddr,ddatain,ddataout,regview_t1,oe,we);
myimem : imem port map(clk,reset,iaddr,idata);
mydmem : dmem port map(clk,reset,daddr,ddatain,ddataout,oe,we);


end Behavioral;

