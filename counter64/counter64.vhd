LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter64 is
	port(
		clk,rst,resume:in STD_LOGIC;
		H,L: out STD_LOGIC_VECTOR(6 downto 0)
	);
end counter64;

architecture bhv of counter64 is
	signal not_q1,not_q2,not_q3,not_q4,not_q5,not_q6:STD_LOGIC:='0';
	signal Q: STD_LOGIC_VECTOR(5 downto 0):="000000";
	signal reset,clock: STD_LOGIC;
	signal r: STD_LOGIC:='0';
	component dtrigger is
	port(
		clk,rst,D:in STD_LOGIC;
		Q,not_Q:out STD_LOGIC
		);
		end component;
	component counter_trigger is
	port(
	clk,rst,D:in STD_LOGIC;
	Q,not_Q: out STD_LOGIC
	);
	end component;
	component output_transformer is
	port(
	Q: in STD_LOGIC_VECTOR(5 downto 0);
	H,L: out STD_LOGIC_VECTOR(6 downto 0)
	);
	end component;
	begin
	process(Q,rst,clk,resume)
	begin
	if resume = '1' and resume'event then
	r <= not r;
	end if;
	if r = '0' then
	clock <= '0';
	else
	clock <= clk;
	end if;
	if rst = '1' or Q =64 then
		reset <= '1';
	else
	reset <= '0';
	
	end if;
	end process;
			d1: counter_trigger port map(clk => clock, rst => reset,D=>not_q1, Q=>Q(0),not_Q=>not_q1);
			d2: dtrigger port map(clk => not_q1,rst => reset,D=>not_q2, Q=>Q(1), not_Q =>not_q2);
			d3: dtrigger port map(clk => not_q2,rst => reset, D=>not_q3, Q=>Q(2), not_Q =>not_q3);
			d4: dtrigger port map(clk => not_q3, rst => reset, D=>not_q4, Q => Q(3), not_Q => not_q4);
			d5: dtrigger port map(clk => not_q4, rst => reset, D => not_q5, Q => Q(4), not_Q => not_q5);
			d6: dtrigger port map(clk => not_q5, rst => reset, D => not_q6, Q => Q(5), not_Q => not_q6);
			out1: output_transformer port map(Q=>Q, H=>H, L=>L);
	end bhv;
	