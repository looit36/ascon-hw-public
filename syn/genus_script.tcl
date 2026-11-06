set_db init_lib_search_path ../lib/
set_db init_hdl_search_path {
	../hdl/encryption
	../hdl/permutation
	../hdl
}

read_mmmc ../mmmc/mmmc.tcl

read_hdl {
    
    ../hdl/encryption/ascon_enc.v
    ../hdl/encryption/fc_enc.v

    ../hdl/encryption/ascon_encryption.v
    
    ../hdl/permutation/ascon_permutation.v
    ../hdl/roundcounter.v

    ../hdl/permutation/roundconstant.v
    ../hdl/permutation/substitution_layer.v
    ../hdl/permutation/linear_layer.v
}

elaborate Ascon

init_design

check_timing_intent -verbose

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

report_timing > reports/report_timing.rpt

report_power -view view_fast  > reports/power_fast.rpt
report_power -view view_low_temp > reports/power_low_temp.rpt
report_power -view view_slow > reports/power_slow.rpt
report_power -view view_typical > reports/power_typical.rpt
report_power -view view_worst_low > reports/power_worst_low.rpt

report_area   > reports/report_area.rpt
report_qor    > reports/report_qor.rpt

report_design_rules > reports/design_rules.rpt

write_hdl > outputs/ascon_netlist.v
write_sdc -view view_typical > outputs/ascon.sdc

#write_sdf -nonegchecks -edges check_edge -timescale ns -recrem split -setuphold split > outputs/dft_delays.sdf

