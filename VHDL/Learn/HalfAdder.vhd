library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is
	port(
		a,b:in std_logic;
		cout,carry:out std_logic
		);
end HalfAdder;

architecture dataflow of HalfAdder is
begin
	cout <= a xor b;
	carry <= a and b;
end dataflow;