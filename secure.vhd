library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity secure is
	Port ( secu 			: in std_logic;
			 i_high_line_U	: in std_logic;
			 i_low_line_U	: in std_logic;
			 i_high_line_V	: in std_logic;
			 i_low_line_V	: in std_logic;
			 i_high_line_W	: in std_logic;
			 i_low_line_W	: in std_logic;
			 
			 o_high_line_U	: out std_logic;
			 o_low_line_U	: out std_logic;
			 o_high_line_V	: out std_logic;
			 o_low_line_V	: out std_logic;
			 o_high_line_W	: out std_logic;
			 o_low_line_W	: out std_logic);    
end secure;

architecture dataflow of secure is


begin

o_high_line_U	<= not(secu) and i_high_line_U;
o_low_line_U	<= not(secu) and i_low_line_U;
o_high_line_V	<= not(secu) and i_high_line_V;
o_low_line_V	<= not(secu) and i_low_line_V;
o_high_line_W	<= not(secu) and i_high_line_W;
o_low_line_W	<= not(secu) and i_low_line_W;

end dataflow;
