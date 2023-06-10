library ieee;
use ieee.std_logic_1164.all;

entity test is
    port(
        clk: in std_logic;
        rst: in std_logic;
        alarm: out std_logic;
        unlock: out std_logic
    );
end test;

architecture bhv of test is
    signal cnt,m: integer range 0 to 50 := 0;
    signal alarm_reg, unlock_reg: std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                m <= 36;
                alarm_reg <= '0';
                unlock_reg <= '0';
            else
                if cnt = 15 then
                    alarm_reg <= not alarm_reg;
                end if;
					 if cnt = 19 then
                    alarm_reg <= not alarm_reg;
                end if;
                if cnt = 19 or m = 39 then
                    unlock_reg <= '1';
                end if;
                cnt <= cnt + 1;
					 m <= m+1;
            end if;
        end if;
    end process;
    
    alarm <= alarm_reg;
    unlock <= unlock_reg;
end bhv;

用VHDL实现下面功能
系统计时器：用 2 个带译码数码管显示汽车和行人计时。每当按下开关 clk，计时
器减 1。复位时机动车计时器显示 9，行人计时器显示 0.
机动车计时范围9~0 行人计时范围 3~0
计时器有两种模式
机动车通行模式：当机动车计时器工作时（9~0），行人数码管持续显示 0，LED1
（亮）、LED2(灭)，机动车计时器到 0 时，自动切换至行人通行模式。
行人通行模式：当行人计时器开始倒计时（3~0）,机动车数码管持续显示 0，LED1
（灭）、LED2(亮)，行人计时器到 0 时，自动切换至机动车通行模式。
复位：任意时刻按下复位开关时，系统进入机动车通行模式。








