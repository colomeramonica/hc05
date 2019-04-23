-- Mônica Colomera
-- Módulo RAM 
-- Versão 0.1
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is
----------- componente RAM 
component ram is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (7 downto 0);
           din : in  STD_LOGIC_VECTOR (7 downto 0);
           rw : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
-----------
----------- componente HC05
component hc05 is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dout : in  STD_LOGIC_VECTOR (7 downto 0);
           addr : out  STD_LOGIC_VECTOR (7 downto 0);
           rw : out  STD_LOGIC;
           din : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
-----------
----------- componente DIVISOR DE CLOCK
component divclk is
    Port ( clk : in  STD_LOGIC;
           clk : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;
-----------
----------- declaração dos sinais (barramentos internos são sempre sinais)
signal srw : STD_LOGIC; --- sinais não possuem direção
signal sdin : STD_LOGIC_VECTOR (7 downto 0);
signal saddr : STD_LOGIC_VECTOR (7 downto 0);
signal sdivclk : STD_LOGIC;
-----------
begin
----------- instâncias
ramInst: ram port map (clk, rst, saddr, sdin, srw, sdout); --- port map na ordem apresentada nos respectivos componentes
hc05Inst: hc05 port map(clk, rst, sdout, saddr, srw, sdin);
clkdivInst: clkdiv port map (clk, sdivclk, rst);
-----------
end Behavioral;

