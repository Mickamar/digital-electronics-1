------------------------------------------------------------
--
--! @title Binary comparator
--! @author Tomas Fryza
--! Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
--!
--! @copyright (c) 2020 Tomas Fryza
--! This work is licensed under the terms of the MIT license
--!
--! Four-bit binary comparator using when/else
--! assignments. The comparator can distinguish three states
--! between two 4-bit inputs: greater than, equal, and less than.
--!
--! Wavedrom example:
--! {signal: [
--! {name: 'b[3:0]', wave: 'x333333', data: ['0','3','8','9','a','7']},
--! {name: 'a[3:0]', wave: 'x333333', data: ['0','c','9','3','a','6']},
--! {},
--! {name: 'B_greater_A', wave: 'xl..hlh'},
--! {name: 'B_equals_A',  wave: 'xhl..hl'},
--! {name: 'B_less_A',    wave: 'xlh.l..'},
--! ]}
--
-- Hardware: Nexys A7-50T, xc7a50ticsg324-1L
-- Software: TerosHDL, Vivado 2020.2
--
------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 4-bit binary comparator
------------------------------------------------------------

entity mux_3bit_4to1 is
  port (
    a_i           : in    std_logic_vector(2 downto 0); 
    b_i           : in    std_logic_vector(2 downto 0); 
    c_i           : in    std_logic_vector(2 downto 0);
    d_i           : in    std_logic_vector(2 downto 0);
    sel_i         : in    std_logic_vector(1 downto 0);
    f_o           : out   std_logic_vector(2 downto 0)            
  );
end entity mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for 4-bit binary comparator
------------------------------------------------------------

architecture behavioral of mux_3bit_4to1 is

begin
with sel_i select
    f_o <= a_i when "00",
           b_i when "01",
           c_i when "10",
           d_i when "11";

end architecture behavioral;