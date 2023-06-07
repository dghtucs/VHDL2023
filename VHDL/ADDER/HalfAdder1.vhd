library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder1 is
	port(
		a,b:in std_logic;
		f,cout:out std_logic
	);
end HalfAdder1;

architecture plus of HalfAdder1 is
begin
	process(a,b)
	begin
		f<=a xor b;
		cout <= a and b;
	end process;
end plus;