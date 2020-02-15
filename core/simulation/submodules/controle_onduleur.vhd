library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


----------------------------------------------------------------------------------------------------
--Les rapports cycliques sont initialisés au démarrage du système à 0. Voir fichier lock_data.vhd
--La période des signaux générés est initialisé au démarage à 0. Voir fichier lock_data.vhd
--Pour voir l'architecture du registre d'état ouvrir le fichier controle_hps_fpga.vhd
--Lors du premier démarage configurer les registres dans cette ordre : 
--	+	tm						-
--	+	rapport cyclique	-
--	+	periode				-
--	+ 	registre d'état	-
-------------------------
--Avant chaque changement de la valeur de la période, vérifier que le temps mort est différent de 0
-----------------------------------------------------------------------------------------------------
entity controle_onduleur is
	port(csi_clk, csi_reset 	: in std_logic;
			secu 						: in std_logic;
			
			--------------------bus avalon--------------------------
			avs_read, avs_write	: in std_logic;
			avs_address 			: in std_logic_vector (2 downto 0);
			avs_byteenable     	: in  std_logic_vector (1 downto 0); 
			avs_writedata			: in  std_logic_vector (15 downto 0);  
			avs_readdata     		: out std_logic_vector (15 downto 0);
			ins_irq					: out std_logic;
			-----------------------Debug------------------------------
			--o_alpha_U   	: out  std_logic_vector (15 downto 0);  
			--o_alpha_V  		: out  std_logic_vector (15 downto 0); 
			--o_alpha_W  		: out  std_logic_vector (15 downto 0); 
			--o_tm 				: out  std_logic_vector (15 downto 0); 
			--o_periode  		: out  std_logic_vector (15 downto 0);
			--o_start_stop 	: out 	std_logic;
			----------------------Sortie FPGA-----------------------------
			Q_high_line_U 	: out std_logic;
			Q_low_line_U 	: out std_logic;
			Q_high_line_V 	: out std_logic;
			Q_low_line_V 	: out std_logic;
			Q_high_line_W 	: out std_logic;
			Q_low_line_W 	: out std_logic
			);
end controle_onduleur;				

architecture dataflow of controle_onduleur is

-----------------------------------------------Call compenent -------------------------------------------------

component controle_hps_fpga is
	port(csi_clk, csi_reset 	: in std_logic;
			avs_read, avs_write	: in std_logic;
			avs_address 			: in std_logic_vector (2 downto 0);
			avs_byteenable     	: in  std_logic_vector (1 downto 0); 
						
			avs_writedata			: in  std_logic_vector (15 downto 0);  
			secu						: in std_logic;
			end_periode				: in std_logic;
			
			avs_readdata     		: out std_logic_vector (15 downto 0);
			ins_irq					: out std_logic;
			start_stop				: out std_logic;
			alpha_u					: out std_logic_vector (15 downto 0);
			alpha_v					: out std_logic_vector (15 downto 0);
			alpha_w					: out std_logic_vector (15 downto 0);
			periode					: out std_logic_vector (15 downto 0);
			tm 						: out std_logic_vector (15 downto 0)
			);
end component;

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

---------------- signal for control hps to fpga component------------------------
signal sig_avs_readdata  : std_logic_vector (15 downto 0);
signal sig_ins_irq			: std_logic;
signal start_stop : std_logic;
signal alpha_U   	:   std_logic_vector (15 downto 0);  
signal alpha_V  	:   std_logic_vector (15 downto 0); 
signal alpha_W  	:   std_logic_vector (15 downto 0);
signal periode : std_logic_vector (15 downto 0);
signal tm : std_logic_vector (15 downto 0);


			
begin



-------------------------------------------Top level architecture ---------------------------------------------
hps_fpga_bridge		: controle_hps_fpga port map (csi_clk, csi_reset, avs_read, avs_write, avs_address, avs_byteenable, avs_writedata, secu, sig_end_periode,
																	sig_avs_readdata, sig_ins_irq, start_stop, alpha_U, alpha_V, alpha_W, periode,
																	tm);

counter_gen 			: counter 	port map (csi_clk, csi_reset, sig_periode, start_stop, sig_end_periode, sig_cpt);

protect_data 			: lock_data port map (csi_clk, csi_reset, alpha_U, alpha_V, alpha_W, tm, periode, start_stop, 
														sig_end_periode, sig_alpha_U, sig_alpha_V, sig_alpha_W, sig_tm, 
														sig_periode, sig_start_stop);

generate_PWM_line_U 	: MLI 		port map (csi_clk, csi_reset, sig_tm, sig_start_stop, sig_alpha_U, sig_cpt, sig_high_line_U,
														sig_low_line_U); 												

generate_PWM_line_V 	: MLI 		port map (csi_clk, csi_reset, sig_tm, sig_start_stop, sig_alpha_V, sig_cpt, sig_high_line_V,
														sig_low_line_V); 												

generate_PWM_line_W	: MLI 		port map (csi_clk, csi_reset, sig_tm, sig_start_stop, sig_alpha_W, sig_cpt, sig_high_line_W,
														sig_low_line_W); 												
												
security 				: secure 	port map (secu, sig_high_line_U, sig_low_line_U, sig_high_line_V, sig_low_line_V,
														sig_high_line_W, sig_low_line_W, secu_high_line_U, secu_low_line_U,
														secu_high_line_V, secu_low_line_V, secu_high_line_W, secu_low_line_W);

----------------------------------------Output signals-----------------------------------------------										
Q_high_line_U <= secu_high_line_U; 											
Q_low_line_U <= secu_low_line_U;

Q_high_line_V <= secu_high_line_V; 											
Q_low_line_V <= secu_low_line_V;

Q_high_line_W <= secu_high_line_W; 											
Q_low_line_W <= secu_low_line_W;
						
avs_readdata   <= sig_avs_readdata;
ins_irq			<= sig_ins_irq;

-----------------------Debug signals-------------------------------
--o_start_stop 	<= start_stop;
--o_alpha_U   	<= alpha_U;  
--o_alpha_V  		<= alpha_V; 
--o_alpha_W  		<= alpha_W; 
--o_periode  		<= periode;
--o_tm 				<= tm; 

---------------------------------------------------------------------------------------------------------

end dataflow;