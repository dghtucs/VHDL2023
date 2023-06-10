LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DTrigger is
port(
D, CP, Rd, Sd: in std_logic;
Q: out std_logic:='0';
nQ: out std_logic :='1'
);
end DTrigger;

architecture dataflow of DTrigger is
begin
	process(CP, Rd, Sd)
	begin
		if (Rd ='0') then
			Q<='0';
			nQ<='1';
		elsif (Sd ='0') then
			Q<='1';
			nQ<='0';
		elsif(CP'event and CP ='1') then Q<=D;
			nQ<=not D;
		end if;
	end process;
end dataflow;