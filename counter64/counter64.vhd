library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity counter64 is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        enable : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR (5 downto 0)
    );
end counter64;

architecture Behavioral of counter64 is
    component DFlipFlop is
        Port (
            D : in STD_LOGIC;
            clk : in STD_LOGIC;
            Q : out STD_LOGIC
        );
    end component;
    
    signal temp : STD_LOGIC_VECTOR (5 downto 0);
    signal temp_next : STD_LOGIC_VECTOR (5 downto 0);
begin
    gen: for i in 0 to 5 generate
        U1: DFlipFlop
        port map(
            D => temp_next(i),
            clk => clk,
            Q => temp(i)
        );
    end generate;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                temp_next <= "000000"; -- reset counter
            elsif enable = '1' then
                if temp = "111111" then
                    temp_next <= "000000"; -- reset counter after 63
                else
                    temp_next <= STD_LOGIC_VECTOR(unsigned(temp) + 1); -- increment counter
                end if;
            end if;
        end if;
    end process;

    count <= temp;
end Behavioral;
