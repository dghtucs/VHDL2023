library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Stopwatch is
	port(
    clk  : in  std_logic;
    reset: in  std_logic;
    LED1 : out std_logic;
    LED2 : out std_logic;
    car_timer : out integer range 0 to 9;
    ped_timer : out integer range 0 to 3
  );
end Stopwatch;

architecture watch of Stopwatch is
	component light
		port(
    clk  : in  std_logic;
    reset: in  std_logic;
    LED1 : out std_logic;
    LED2 : out std_logic;
    car_timer : out integer range 0 to 9;
    ped_timer : out integer range 0 to 3
  );
	end component;

	signal clk_in: std_logic:='0';
	signal cnt: integer:= 0;
begin

	l:light port map(clk=>clk_in,rst=>rst,LED1=>LED1,LED2=>LED2,car_timer=>car_timer,ped_timer=>ped_timer);
	type state_type is (CAR_MODE, PED_MODE);
signal current_state : state_type;
signal car_count : integer range 0 to 9;
signal ped_count : integer range 0 to 3;

begin
  -- State Machine
  process(clk, reset)
  begin
    if reset = '1' then
      current_state <= CAR_MODE;
      car_count <= 9;
      ped_count <= 0;
    elsif rising_edge(clk) then
      case current_state is
        when CAR_MODE =>
          if car_count > 0 then
            car_count <= car_count - 1;
          else
            current_state <= PED_MODE;
            ped_count <= 3;
          end if;
        when PED_MODE =>
          if ped_count > 0 then
            ped_count <= ped_count - 1;
          else
            current_state <= CAR_MODE;
            car_count <= 9;
          end if;
        when others =>
          current_state <= CAR_MODE;
      end case;
    end if;
  end process;

  -- Output Assignment
  car_timer <= car_count when (current_state = CAR_MODE) else 0;
  ped_timer <= ped_count when (current_state = PED_MODE) else 0;

  LED1 <= '1' when (current_state = CAR_MODE) else '0';
  LED2 <= '0' when (current_state = CAR_MODE) else '1';
	process(pau, clk, rst)
	begin
		if(rst='1')then
			cnt<=0;
			clk_in<='0';
		elsif (clk'event and clk='1' and pau='0') then
			if (cnt = 1000000) then
				cnt<=0;
				clk_in<='1';
			elsif (cnt = 500000) then
				cnt<=cnt+1;
				clk_in<='0';
			else
				cnt<=cnt+1;
			end if;
		end if;
	end process;
end watch;