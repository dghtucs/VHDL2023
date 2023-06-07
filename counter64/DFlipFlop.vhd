library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DFlipFlop is
    Port (
        D : in STD_LOGIC;
        clk : in STD_LOGIC;
        Q : out STD_LOGIC
    );
end DFlipFlop;

architecture Behavioral of DFlipFlop is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end Behavioral;