library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cnt6 is
	port(
		clk, Rd, v: in std_logic;
		Digit: out std_logic_vector(3 downto 0)
	);
end Cnt6;

architecture asy6 of Cnt6 is
	component DTrigger
		port(
			D, CP, Rd, Sd: in std_logic;
			Q:out std_logic:='0';
			nQ:out std_logic:='1'
		);
	end component;
	signal D, nQ, Q: std_logic_vector(2 downto 0);
	signal tmpl, tmp2: std_logic;
begin
	labe10: for i in 0 to 2 generate
		Di:DTrigger port map(D(i),clk,Rd,'1',Q(i),nQ(i));
	end generate labe10;
	D(0)<=v xor Q(0);
	D(1)<=((not v) and Q(1))or (V and (nQ(2) and (Q(1) xor Q(0))));
	D(2)<=((not v)and Q(2)) or (v and ((Q(2) and nQ(0)) or (Q(1) and Q(0))));
	Digit(2 downto 0)<=Q;
	Digit(3)<='0';
end asy6;

