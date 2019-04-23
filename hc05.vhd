-- Mônica Colomera
-- Módulo HC05 
-- Versão 0.1
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hc05 is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dout : in  STD_LOGIC_VECTOR (7 downto 0);
           addr : out  STD_LOGIC_VECTOR (7 downto 0);
           rw : out  STD_LOGIC;
           din : out  STD_LOGIC_VECTOR (7 downto 0));
end hc05;

architecture Behavioral of hc05 is

begin


end Behavioral;

