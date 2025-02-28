# constrain 100 MHz clock
create_clock -name "clk_50MHz" -period 20.00ns [get_ports clk_clk]

# constrain PLL and other genrated clock
derive_pll_clocks -create_base_clocks

#automatically calculate clock uncertainly to jitter and others effects
derive_clock_uncertainty