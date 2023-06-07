library ieee;
use ieee.std_logic_1164.all;

entity FA1 is
	port(
		a,b:in std_logic_vector(3 downto 0);
		cin:in std_logic;
		f:out std_logic_vector(3 downto 0);
		cout:out std_logic
);
end FA1;
 
architecture plus of FA1 is
	component FullAdder1
		port(
			a,b,cin:in std_logic;
			f,cout:out std_logic
);
	end component;
	signal c:std_logic_vector (2 downto 0);
begin
	fa0:FullAdder1 port map(a(0),b(0),cin,f(0),c(0));
	fa1:FullAdder1 port map(a(1),b(1),c(0),f(1),C(1));
	fa2:FullAdder1 port map(a(2),b(2),c(1),f(2),c(2));
	fa3:FullAdder1 port map(a(3),b(3),c(2),f(3),cout);
end plus;