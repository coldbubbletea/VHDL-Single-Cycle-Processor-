----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:35 05/07/2021 
-- Design Name: 
-- Module Name:    scpu - Behavioral 
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

entity scpu is
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
end scpu;

architecture Behavioral of scpu is
component programcounter_1 
    Port ( clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
	        in_pc : in STD_LOGIC_VECTOR(31 DOWNTO 0);
			  out_pc : out STD_LOGIC_VECTOR(31 DOWNTO 0));
end component;

component RDM_2
    Port ( instruction : std_logic_vector(31 downto 0);
           CONTROL : in  STD_LOGIC;
           W : out  STD_LOGIC_vector(4 downto 0));
end component;

component rf_3 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instruction : in  STD_LOGIC_VECTOR (31 downto 0);
           wa : in  STD_LOGIC_VECTOR (4 downto 0);
           rd1 : out  STD_LOGIC_VECTOR (31 downto 0);
           rd2 : out  STD_LOGIC_VECTOR (31 downto 0);
           wd : in  STD_LOGIC_VECTOR (31 downto 0);
           rw : in  STD_LOGIC;
			  regview_t1 : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component mulp_4 is
port(
	ALUSRC  : in std_logic ;
	RD2 : in std_logic_vector (31 downto 0);
	SE : in std_logic_vector (31 downto 0);
	OALU : out std_logic_vector(31 downto 0));
end component;

component ALU_5 is
port (
	ALUOP : in std_logic_vector(2 downto 0);
	A : in std_logic_vector(31 downto 0);
	B : in std_logic_vector(31 downto 0);
	R : out std_logic_vector(31 downto 0);
	zero : out std_logic);
end component;

component WRITE_DATA_M_6 is
port( 
	ddataout : in std_logic_vector(31 downto 0);
	alur : in std_logic_vector(31 downto 0);
	memtoreg : in std_logic;
	writedata : out std_logic_vector(31 downto 0));
	
end component;


component signextend_7 is
port(
	i16 : in std_logic_vector(15 downto 0);
	o32 : out std_logic_vector(31 downto 0));
end component;

component alucontrol_8 is
port(
	aluop : in STD_LOGIC_VECTOR(2 downto 0);
	funct : in STD_LOGIC_VECTOR(5 downto 0);
	alucontrol : out STD_LOGIC_VECTOR(2 downto 0));
end component;



component control_9 is
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
end component;

component pcadd_10 is
port(
	pc : in std_logic_vector(31 downto 0);
	pc4 : out std_logic_vector(31 downto 0));
end component;

component shiftleft_11 is
port (
	inm : in std_logic_vector(31 downto 0);
	slo : out std_logic_vector(31 downto 0));
end component;

component check_12 is
PORT(
	branch : in std_logic;
	zero : in std_logic;
	checkbit : out std_logic);
end component;

component branchadder_13 is
port(
	add_a : in std_logic_vector(31 downto 0);
	add_b : in std_logic_vector(31 downto 0);
	result : out std_logic_vector(31 downto 0));
end component;

component branchmultiplex_14 is
port
(
	c : in std_logic;
	aluresult : in std_logic_vector(31 downto 0);
	pc : in std_logic_vector(31 downto 0);
	result : out std_logic_vector(31 downto 0));
end component;

component JUMPMULTEX_15 is
port(
	a : in std_logic_vector(31 downto 0);
	b : in std_logic_vector(31 downto 0);
	jump : in std_logic;
	out_pc : out std_logic_vector(31 downto 0));
end component;


component jumpshift_16 is
port
(	
	ins : in std_logic_vector(31 downto 0);
	out_ins : out std_logic_vector(27 downto 0));
end component;

component JAC_17 is
port(
	ins : in std_logic_vector(27 downto 0);
	pc : in std_logic_vector(31 downto 0);
	jumpadd : out std_logic_vector(31 downto 0));
end component;

signal in_pc : std_logic_vector(31 downto 0);
signal out_pc: std_logic_vector(31 downto 0):="00000000000000000100000000000000" ;
signal instruction : std_logic_vector(31 downto 0);
signal wr : std_logic_vector(4 downto 0);
signal rd1 : std_logic_vector(31 downto 0);
signal rd2 : std_logic_vector(31 downto 0);
signal wd : std_logic_vector(31 downto 0);
signal rw : std_logic;
signal alucontrol : std_logic_vector(2 downto 0);
signal aluop : std_logic_vector(2 downto 0);
signal alusrc : std_logic;
signal oalu : std_logic_vector(31 downto 0);
signal se : std_logic_vector(31 downto 0);
signal zero : std_logic;
signal check : std_logic;
signal aluresult : std_logic_vector(31 downto 0);
signal regdst : std_logic;
signal jump : std_logic;
signal branch : std_logic;
signal memread : std_logic;
signal memtoreg : std_logic;
signal memwrite : std_logic;
signal pc10 : std_logic_vector(31 downto 0);
signal sesl : std_logic_vector(31 downto 0);
signal a12 : std_logic;
signal alu_re : std_logic_vector(31 downto 0);
signal m14 : std_logic_vector(31 downto 0);
signal ins28 : std_logic_vector(27 downto 0);
signal jumpaddress17 : std_logic_vector(31 downto 0);

begin
iaddr <= out_pc;
instruction <= idata;
ddatain <= rd2;
daddr <= aluresult;
we <= memwrite;
oe <= memread;

mypc_1 : programcounter_1 port map(clk,reset,in_pc,out_pc);
myrdm_2 : RDM_2 port map(instruction,regdst,wr);
mycontrol_3 : rf_3 port map(clk,reset,instruction,wr,rd1,rd2,wd,rw,regview_t1);
mymulp_4 : mulp_4 port map(alusrc,rd2,se,oalu);
myalu_5 : alu_5 port map(alucontrol,rd1,oalu,aluresult,zero);
mywrite_data_m_6 : write_data_m_6 port map(ddataout,aluresult,memtoreg,wd);
mysignextend_7 : signextend_7 port map(instruction(15 downto 0),se);
myalucontrol_8 : alucontrol_8 port map(aluop,instruction(5 downto 0),alucontrol);
mycontrol_9 : control_9 port map(instruction,regdst,jump,branch,memread,memtoreg,aluop,memwrite,alusrc,rw);
mypcadd_10 : pcadd_10 port map(out_pc,pc10);
myshiftleft_11 : shiftleft_11 port map(se,sesl);
mycheck_12 : check_12 port map(branch,zero,check);
mybranchadder_13 : branchadder_13 port map(pc10,sesl,alu_re);
mybranchmultiplex_14 : branchmultiplex_14 port map(check,alu_re,pc10,m14);
myjumpmultex_15 : jumpmultex_15 port map(jumpaddress17,m14,jump,in_pc);
myjumpshift_16 : jumpshift_16 port map(instruction,ins28);
myjac_17 : jac_17 port map(ins28,pc10,jumpaddress17);
end Behavioral;

