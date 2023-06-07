library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity a is
    port(
        key:in std_logic;
        led:out std_logic
    );
end a;

architecture bhv of a is
    begin
        led<=not key;
    end 
end bhv;


