transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib core
vmap core core
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_avalon_st_adapter_001.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_pio_led.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_identifiant_sys.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_hps_0.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_hps_0_hps_io.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_mem_if_hhp_qseq_synth_top.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0_acv_hard_addr_cmd_pads.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0_acv_hard_io_pads.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0_acv_hard_memphy.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0_acv_ldc.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0_altdqdqs.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0_clock_pair_generator.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0_generic_ddio.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_JTAG_console.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_packets_to_master.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_st_packets_to_bytes.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_st_bytes_to_packets.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_st_jtag_interface.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_jtag_dc_streaming.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_jtag_sld_node.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_jtag_streaming.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_st_clock_crosser.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_std_synchronizer_nocut.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_st_idle_remover.v}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_st_idle_inserter.v}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_irq_mapper_001.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_irq_mapper.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_width_adapter.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_address_alignment.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_burst_adapter_13_1.sv}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_st_pipeline_base.v}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_router_004.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_router_003.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_mm_interconnect_0_router.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_axi_master_ni.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altdq_dqs2_acv_connect_to_hard_phy_cyclonev.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_mem_if_dll_cyclonev.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_mem_if_hard_memory_controller_top_cyclonev.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/altera_mem_if_oct_cyclonev.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_p0.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/hps_sdram_pll.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_hps_0_hps_io_border.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_hps_0_fpga_interfaces.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_JTAG_console_p2b_adapter.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_JTAG_console_b2p_adapter.sv}
vlog -sv -work core +incdir+C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/core_JTAG_console_timing_adt.sv}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/core.vhd}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/core_rst_controller.vhd}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/core_rst_controller_001.vhd}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/controle_onduleur.vhd}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/controle_hps_fpga.vhd}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/counter.vhd}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/lock_data.vhd}
vcom -93 -work core {C:/Users/mmouh/TP_CC_2019_PROJET/core/synthesis/submodules/MLI.vhd}
vcom -93 -work work {C:/Users/mmouh/TP_CC_2019_PROJET/secure.vhd}

vcom -93 -work work {C:/Users/mmouh/TP_CC_2019_PROJET/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -L core -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 300 ns
