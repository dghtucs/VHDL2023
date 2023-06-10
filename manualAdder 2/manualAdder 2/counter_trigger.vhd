LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_trigger is
	port(
	clk,rst,D: in STD_LOGIC;
	Q,not_Q: out STD_LOGIC
	);
	end counter_trigger;

architecture bhv of counter_trigger is
signal counter: STD_LOGIC_VECTOR(19 downto 0):=X"00000";
begin
	process(clk,rst)
	begin
	if rst = '1' then
		Q <= '0';
		not_Q <= '1';
		counter <= X"00000";
	else
	if clk = '1' and clk'event then
		if counter = 999_999 then
		Q <= D;
		not_Q <= not D;
		counter <= X"00000";
		else
		counter <= counter +1;
		end if;
	end if;
	end if;
	end process;
	end bhv;
	