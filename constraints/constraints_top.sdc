create_clock -name clk -period 40 -waveform {0 20} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty -setup 0.1 [get_clocks "clk"]
set_clock_uncertainly -hold 0.05 [get_clocks "clk"]

set ascon_inputs [get_ports {
	rst
	keyxSI*
	noncexSI*
	associated_dataxSI*
	plain_textxSI*
	encryption_startxSI
	r_64xSI*
	r_128xSI*
	r_ptxSI*
}]

set_input_delay -clock [get_clocks clk] -min 0.2 $ascon_inputs
set_input_delay -clock [get_clocks clk] -max 1.0 $ascon_inputs
set_input_transition 0.1 $ascon_inputs

set_output_delay -clock [get_clocks clk] -min -0.1 [all_outputs]
set_output_delay -clock [get_clocks clk] -max 1.0 [all_outputs]
set_load 0.01 [all_outputs] 


