library ieee;
use ieee.std_logic_1164.all;

entity jk_flip_flop is
    port (
        j    : in  std_logic;
        k    : in  std_logic;
        clk  : in  std_logic;
        q    : out std_logic;
        q_n  : out std_logic
    );
end entity jk_flip_flop;

architecture rtl of jk_flip_flop is
    signal stored : std_logic;
begin
    update_state : process(clk)
    begin
        if rising_edge(clk) then
            case std_logic_vector'(j & k) is
                when "00" => null;
                when "01" => stored <= '0';
                when "10" => stored <= '1';
                when "11" => stored <= not stored;
                when others => stored <= 'X';
            end case;
        end if;
    end process;

    q   <= stored;
    q_n <= not stored;
end architecture rtl;
