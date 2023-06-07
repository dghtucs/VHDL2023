library ieee;
use ieee.std_logic_1164.all;

entity FA2 is
	port(
		a,b:in std_logic_vector(3 downto 0);
		cin:in std_logic;
		f:out std_logic_vector(3 downto 0);
		cout:out std_logic
);
end FA2;

architecture plus of FA2 is
	component FullAdder1
		port(
				a,b,cin:in std_logic;
				f,cout:out std_logic;
				p,g:buffer std_logic
		);
	end component;
	
	component Advanced
		port (
			p,g:in std_logic_vector(3 downto 0);
			cin:in std_logic;
			c:out std_logic_vector(3 downto 0)
		);
	end component;
	signal p,g:std_logic_vector (3 downto 0);
	signal c:std_logic_vector(2 downto 0);
begin
	fa0:FullAdder1 port map(a(0),b(0),cin,f=>f(0),p=>p(0),g=>g(0));
	fa1:FullAdder1 port map(a(1),b(1),c(0),f=>f(1),p=>p(1),g=>g(1));
	fa2:FullAdder1 port map(a(2),b(2),c(1),f=>f(2),p=>p(2),g=>g(2));
	fa3:FullAdder1 port map(a(3),b(3),c(2),f=>f(3),p=>p(3),g=>g(3));
	ad:Advanced port map(p,g,cin,c(0)=>c(0),c(1)=>c(1),c(2)=>c(2),c(3)=>cout);
end plus;



library ieee;
use ieee.std_logic_1164.all;

entity Advanced is
	port(
		p,g:in std_logic_vector(3 downto 0);
		cin:in std_logic;
		c:out std_logic_vector(3 downto 0)
);
end Advanced;

architecture ad of Advanced is
begin
	process(p,g,cin)
	begin
		c(0)<=g(0) or (p(0) and cin);
		c(1)<=g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
		c(2)<=g(2)or (p(2) and g(1)) or (p(2)and p(1) and g(0))
		or (p(2) and p(1) and p(0) and cin);
		c(3)<=g(3) or (p(3) and g(2)) or(p(3) and p(2) and g(1))
		or (p(3)and p(2) and p(1) and g(0)) or (p(3) and p(2) and p(1) and p(0) and cin); 
	end process;
end ad;