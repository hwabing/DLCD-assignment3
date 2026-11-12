library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
    port (
        d   : in  std_logic;
        clk : in  std_logic;
        q   : out std_logic;
        q_n : out std_logic
    );
end entity d_flip_flop;

architecture rtl of d_flip_flop is
    signal stored : std_logic;
begin
    capture : process(clk)
    begin
        if rising_edge(clk) then
            stored <= d;
        end if;
    end process;

    q   <= stored;
    q_n <= not stored;
end architecture rtl;
