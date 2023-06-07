library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Counter64 is
    port (
        clk, rst: in std_logic;
        DigitL, DigitH:out std_logic_vector(3 downto 0)
    );
end Counter64;

architecture Behavioral of Counter64 is
    component DTrigger
        port (
            D, CP, Rd, Sd: in std_logic;
            Q:out std_logic:='0';
            nQ:out std_logic:='1'
        );
    end component;
	 signal Rd:std_logic;
    signal D: std_logic_vector(5 downto 0);
    signal Q,nQ: std_logic_vector(5 downto 0);
    signal Count: integer range 0 to 63 := 0;
    signal HexCount: std_logic_vector(7 downto 0);
begin
    D(0) <= not Q(0);
    D(1) <= (not Q(0)) and (not Q(1));
    D(2) <= (not Q(0)) and (not Q(1)) and (not Q(2));
    D(3) <= (not Q(0)) and (not Q(1)) and (not Q(2)) and (not Q(3));
    D(4) <= (not Q(0)) and (not Q(1)) and (not Q(2)) and (not Q(3)) and (not Q(4));
    D(5) <= (not Q(0)) and (not Q(1)) and (not Q(2)) and (not Q(3)) and (not Q(4)) and (not Q(5));
    
    D0Trigger: DTrigger port map(D=>D(0), CP=>clk, Rd=>Rd, Sd=>'1', Q=>Q(0),nQ=>nQ(0));
    D1Trigger: DTrigger port map(D=>D(1), CP=>clk, Rd=>Rd, Sd=>'1', Q=>Q(1),nQ=>nQ(1));
    D2Trigger: DTrigger port map(D=>D(2), CP=>clk, Rd=>Rd, Sd=>'1', Q=>Q(2),nQ=>nQ(2));
    D3Trigger: DTrigger port map(D=>D(3), CP=>clk, Rd=>Rd, Sd=>'1', Q=>Q(3),nQ=>nQ(3));
    D4Trigger: DTrigger port map(D=>D(4), CP=>clk, Rd=>Rd, Sd=>'1', Q=>Q(4),nQ=>nQ(4));
    D5Trigger: DTrigger port map(D=>D(5), CP=>clk, Rd=>Rd, Sd=>'1', Q=>Q(5),nQ=>nQ(5));
    
	 Count <= conv_integer(Q);
    HexCount <= std_logic_vector(to_unsigned(Count, 8));
	 
	 DigitL <= HexCount(3 downto 0);
	 DigitH <= HexCount(7 downto 4);
	 
	 
end Behavioral;