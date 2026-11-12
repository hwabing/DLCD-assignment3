library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop_async is
    port (
        d    : in  std_logic;
        clk  : in  std_logic;
        set  : in  std_logic;
        clr  : in  std_logic;
        q    : out std_logic;
        q_n  : out std_logic
    );
end entity d_flip_flop_async;

architecture rtl of d_flip_flop_async is
    signal stored : std_logic;
begin
    update_state : process(clk, set, clr)
    begin
        if clr = '1' then
            stored <= '0';
        elsif set = '1' then
            stored <= '1';
        elsif rising_edge(clk) then
            stored <= d;
        end if;
    end process;

    q   <= stored;
    q_n <= not stored;
end architecture rtl;
