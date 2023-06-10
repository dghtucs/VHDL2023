LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity output_transformer is
	port(
	 Q: in STD_LOGIC_VECTOR(5 downto 0);
	 H,L: out STD_LOGIC_VECTOR(6 downto 0)
	 );
end output_transformer;


architecture bhv of output_transformer is
	signal temp: STD_LOGIC_VECTOR(3 downto 0):="0000";
	signal h1: STD_LOGIC_VECTOR(3 downto 0):="0000";
	signal t1: STD_LOGIC_VECTOR(5 downto 0):="000000";
component ntl is
port(N:in STD_LOGIC_VECTOR(3 downto 0);
	L:out STD_LOGIC_VECTOR(6 downto 0)
);
end component;

begin
	process(Q)
	begin
	if Q < 10 then
	t1 <= Q;
	h1 <= "0000";
	elsif Q < 20 then
	t1 <= Q - 10;
	h1 <= "0001";
	elsif Q <30 then
	t1 <= Q - 20;
	h1 <= "0010";
	elsif Q <40 then
	t1 <= Q - 30;
	h1 <= "0011";
	elsif Q <50 then
	t1 <= Q - 40;
	h1 <= "0100";
	elsif Q<60 then
	t1 <= Q - 50;
	h1 <= "0101";
	else
	t1 <= Q - 60;
	h1 <= "0110";
	end if;
	temp <= t1(3 downto 0);
	end process;
	n1: ntl port map(N=>h1,L=>H);
	n2: ntl port map(N=>temp, L=>L);
	end bhv;