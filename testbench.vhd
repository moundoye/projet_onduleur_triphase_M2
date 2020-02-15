library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;


architecture dataflow of testbench is

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
			 o_start_stop 	: out 	std_logic
			 );    
end component;

component controle_onduleur is
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
end component;		

signal clk		: STD_LOGIC;
signal reset 		: STD_LOGIC;
signal secu : std_logic;

signal out_sig_high_line_U : std_logic;
signal out_sig_low_line_U : std_logic;
signal out_sig_high_line_V : std_logic;
signal out_sig_low_line_V : std_logic;
signal out_sig_high_line_W : std_logic;
signal out_sig_low_line_W : std_logic;

---------------- signal for control hps to fpga component------------------------
signal sig_avs_read  : std_logic; 
signal sig_avs_write	: std_logic;
signal sig_avs_address	: std_logic_vector (2 downto 0);
signal sig_avs_byteenable : std_logic_vector (1 downto 0); 
signal sig_avs_write_data : std_logic_vector (15 downto 0);  

signal sig_avs_readdata  : std_logic_vector (15 downto 0);
signal sig_ins_irq			: std_logic;

-----------------Debuging Signal------------------
--signal sig_alpha_U_2   	:   std_logic_vector (15 downto 0);  
--signal sig_alpha_V_2  	:   std_logic_vector (15 downto 0); 
--signal sig_alpha_W_2  	:   std_logic_vector (15 downto 0);
--signal sig_tm_2 : std_logic_vector (15 downto 0);
--signal sig_periode_2 : std_logic_vector (15 downto 0);
--signal sig_start_stop_2 : std_logic;

begin
	DUT : controle_onduleur port map(clk, reset,  
												secu, sig_avs_read, sig_avs_write, sig_avs_address, sig_avs_byteenable, 
												sig_avs_write_data, sig_avs_readdata, sig_ins_irq, 
												-----------------Debuging Signal------------------
												--sig_alpha_U_2,
												--sig_alpha_V_2,
												--sig_alpha_W_2,
												--sig_tm_2,
												--sig_periode_2, 
												--sig_start_stop_2,
												--------------------------------------------------
												out_sig_high_line_U, out_sig_low_line_U, 
												out_sig_high_line_V, out_sig_low_line_V, out_sig_high_line_W, 
												out_sig_low_line_W);

	horloge_process : process
	begin
		clk <= '1';
		wait for 1 ns;
		clk <= '0';
		wait for 1 ns;
	end process;
	
	reset_process : process
	begin
		reset <= '0';
		wait for 2 ns;
		reset <= '1';
		wait;
	end process;
	
	security_process : process
	begin
		secu <= '1';
		wait for 10 ns;
		secu <= '0';
		----Blackout test------
		wait for 250 ns;
		secu <= '1';
		wait;
	end process;

	simulate_processor : process
	begin
				
		---------------Read Init values in registers-------------
		sig_avs_byteenable 	<= "11";
		sig_avs_read			<= '1';
		sig_avs_write			<= '0';
		sig_avs_address 		<=	"000";
		wait for 6 ns;
		
		sig_avs_address 		<=	"001";
		wait for 2 ns;
		
		sig_avs_address 		<=	"010";
		wait for 2 ns;
		
		sig_avs_address 		<=	"011";
		wait for 2 ns;
		
		sig_avs_address 		<=	"100";
		wait for 2 ns;
		
		sig_avs_address 		<=	"101";
		wait for 2 ns;
		
		sig_avs_byteenable 	<= "00";
		sig_avs_read			<= '0';
		wait for 2 ns;
		-----------------write into registers----------------
		sig_avs_byteenable	<= "11";
		sig_avs_read			<= '0';
		sig_avs_write			<= '1';
		sig_avs_address		<= "001";
		sig_avs_write_data	<= "0000000000001000";
		wait for 2 ns;
		
		sig_avs_address		<= "010";
		sig_avs_write_data	<= "0000000000001000";
		wait for 2 ns;
		
		sig_avs_address		<= "011";
		sig_avs_write_data	<= "0000000000001000";
		wait for 2 ns;
		
		sig_avs_address		<= "100";
		sig_avs_write_data	<= "0000000000010000";
		wait for 2 ns;
		
		sig_avs_address		<= "101";
		sig_avs_write_data	<= "0000000000000010";
		wait for 2 ns;
		
		sig_avs_write			<= '0';
		sig_avs_read			<= '1';
		wait for 2 ns;
		
		sig_avs_address 		<=	"100";
		wait for 2 ns;
		
		sig_avs_address 		<=	"011";
		wait for 2 ns;
		
		sig_avs_address 		<=	"010";
		wait for 2 ns;
		
		sig_avs_address 		<=	"001";
		wait for 2 ns;
		
		sig_avs_address 		<=	"000";
		wait for 2 ns;
		
		sig_avs_byteenable 	<= "00";
		sig_avs_read			<= '0';
		wait for 2 ns;
		
		sig_avs_byteenable 	<= "11";
		sig_avs_write			<= '1';
		sig_avs_address		<= "000";
		sig_avs_write_data	<= (others => '1');
		wait for 2 ns;
		
		sig_avs_write			<= '0';
		sig_avs_read			<= '1';	
		wait for 2 ns;
		
		sig_avs_read			<= '0';
		sig_avs_byteenable	<= "00";	
		wait;
	end process;

end dataflow;