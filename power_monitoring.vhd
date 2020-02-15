library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity power_monitoring is
	port(clk, reset 	: in std_logic;
			alpha_U     : in  std_logic_vector (15 downto 0);  
			alpha_V     : in  std_logic_vector (15 downto 0); 
			alpha_W     : in  std_logic_vector (15 downto 0);
			tm 		   : in  std_logic_vector (15 downto 0);
			periode 		: in std_logic_vector (15 downto 0);
			start_stop 	: in std_logic;
			secu 			: in std_logic;
			
			o_alpha_U   	: out  std_logic_vector (15 downto 0);  
			o_alpha_V  		: out  std_logic_vector (15 downto 0); 
			o_alpha_W  		: out  std_logic_vector (15 downto 0); 
			o_tm 				: out  std_logic_vector (15 downto 0); 
			o_periode  		: out  std_logic_vector (15 downto 0);
			o_start_stop 	: out 	std_logic;
			
			o_end_periode 	: out std_logic;
			o_cpt				: out std_logic_vector (15 downto 0);
			
			o_high_line_U 	: out std_logic;
			o_low_line_U 	: out std_logic;
			o_high_line_V 	: out std_logic;
			o_low_line_V 	: out std_logic;
			o_high_line_W 	: out std_logic;
			o_low_line_W 	: out std_logic
			);
end power_monitoring;				

architecture dataflow of power_monitoring is

-----------------------------------------------Call compenent -------------------------------------------------
component lock_data is
	Port (
	       
			 clk, reset: in  std_logic;
			 i_alpha_U     : in  std_logic_vector (15 downto 0);  
			 i_alpha_V     : in  std_logic_vector (15 downto 0); 
			 i_alpha_W     : in  std_logic_vector (15 downto 0); 
			 i_tm 		   : in  std_logic_vector (15 downto 0); 
			 i_periode     : in  std_logic_vector (15 downto 0);
			 i_start_stop 	: in 	std_logic;
			 i_Fc				: in	std_logic;
			 
			 o_alpha_U   	: out  std_logic_vector (15 downto 0);  
			 o_alpha_V  	: out  std_logic_vector (15 downto 0); 
			 o_alpha_W  	: out  std_logic_vector (15 downto 0); 
			 o_tm 			: out  std_logic_vector (15 downto 0); 
			 o_periode  	: out  std_logic_vector (15 downto 0);
			 o_start_stop 	: out  std_logic
			 );    
end component;

component counter is
	Port ( clk 		: in  STD_LOGIC;    
			 reset	: in  STD_LOGIC;    
			 periode : in  STD_LOGIC_VECTOR (15 downto 0);
			 start_stop : in std_logic;
			 end_periode 		: out STD_LOGIC; 		-- pour la détection de fin de cycle
			 cpt 		: out STD_LOGIC_VECTOR(15 downto 0));    
end component;

component MLI is
	Port ( clk 			: in  std_logic;    
			 reset		: in  std_logic;    
			 tm			: in  std_logic_vector (15 downto 0);
			 start_stop : in std_logic;
			 alpha		: in std_logic_vector (15 downto 0);
			 cpt 			: in std_logic_vector (15 downto 0);
			 high_line 	: out std_logic;
			 low_line	: out std_logic);    
end component;

component secure is
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
end component;



-----------------signals for lock_data component------------------------------
signal sig_alpha_U   	:   std_logic_vector (15 downto 0);  
signal sig_alpha_V  	:   std_logic_vector (15 downto 0); 
signal sig_alpha_W  	:   std_logic_vector (15 downto 0);
signal sig_tm : std_logic_vector (15 downto 0);
signal sig_periode : std_logic_vector (15 downto 0);
signal sig_start_stop : std_logic;

----------------signals for counter component---------------------------------
signal sig_end_periode : std_logic;
signal sig_cpt : std_logic_vector (15 downto 0);

----------------signals for MLI component-------------------------------------
signal sig_high_line_U : std_logic;
signal sig_low_line_U : std_logic;
signal sig_high_line_V : std_logic;
signal sig_low_line_V : std_logic;
signal sig_high_line_W : std_logic;
signal sig_low_line_W : std_logic;

----------------signals for secure component-------------------------------------
signal secu_high_line_U : std_logic;
signal secu_low_line_U : std_logic;
signal secu_high_line_V : std_logic;
signal secu_low_line_V : std_logic;
signal secu_high_line_W : std_logic;
signal secu_low_line_W : std_logic;
begin



-------------------------------------------Top level architecture ---------------------------------------------
counter_gen 			: counter 	port map (clk, reset, sig_periode, start_stop, sig_end_periode, sig_cpt);

protect_data 			: lock_data port map (clk, reset, alpha_U, alpha_V, alpha_W, tm, periode, start_stop, 
														sig_end_periode, sig_alpha_U, sig_alpha_V, sig_alpha_W, sig_tm, 
														sig_periode, sig_start_stop);

generate_PWM_line_U 	: MLI 		port map (clk, reset, sig_tm, sig_start_stop, sig_alpha_U, sig_cpt, sig_high_line_U,
														sig_low_line_U); 												

generate_PWM_line_V 	: MLI 		port map (clk, reset, sig_tm, sig_start_stop, sig_alpha_V, sig_cpt, sig_high_line_V,
														sig_low_line_V); 												

generate_PWM_line_W	: MLI 		port map (clk, reset, sig_tm, sig_start_stop, sig_alpha_W, sig_cpt, sig_high_line_W,
														sig_low_line_W); 												
												
security 				: secure 	port map (secu, sig_high_line_U, sig_low_line_U, sig_high_line_V, sig_low_line_V,
														sig_high_line_W, sig_low_line_W, secu_high_line_U, secu_low_line_U,
														secu_high_line_V, secu_low_line_V, secu_high_line_W, secu_low_line_W);
										



----------------------------------------Output signals-----------------------------------------------										
o_high_line_U <= secu_high_line_U; 											
o_low_line_U <= secu_low_line_U;

o_high_line_V <= secu_high_line_V; 											
o_low_line_V <= secu_low_line_V;

o_high_line_W <= secu_high_line_W; 											
o_low_line_W <= secu_low_line_W;
												
o_end_periode <= sig_end_periode;
o_cpt <= sig_cpt;

o_alpha_U   	<= sig_alpha_U;  
o_alpha_V  	<= sig_alpha_V; 
o_alpha_W  	<= sig_alpha_W; 
o_tm 			<= sig_tm; 
o_periode  	<= sig_periode;
o_start_stop 	<= sig_start_stop;
---------------------------------------------------------------------------------------------------------

end dataflow;