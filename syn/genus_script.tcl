set_db init_lib_search_path ../lib/
set_db init_hdl_search_path ../hdl/encryption+decryption/

read_libs NangateOpenCellLibrary_typical.lib
set_db library "NangateOpenCellLibrary_typical.lib"

# set_scan_equivalent -non_scan_cell [get_db lib_cells */DFF_X1] -scan_cell [get_db lib_cells */SDFF_X1] -tieoff_pins {{SE 0}}

read_hdl {
    
    ../hdl/encryption/ascon_enc.v
    ../hdl/encryption/fc_enc.v

    ../hdl/encryption/ascon_encryption.v
    ../hdl/encryption/ascon_encryption_ti.v
    
    ../hdl/permutation/ascon_permutation.v
    ../hdl/permutation/ascon_permutation_ti.v
    ../hdl/roundcounter.v

    ../hdl/permutation/roundconstant.v
    ../hdl/permutation/substitution_layer.v
    ../hdl/permutation/linear_layer.v
}

elaborate

read_sdc ../constraints/constraints_top.sdc

#set_db dft_scan_style muxed_scan
#set_db dft_prefix dft_

#define_shift_enable -name SE -active high -create_port SE
#check_dft_rules

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

check_dft_rules

#convert_to_scan

#set_db design:Ascon .dft_min_number_of_scan_chains 1

#define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports

#connect_scan_chains -auto_create_chains

#syn_opt -incremental
	
#report_scan_chains

report_timing > reports/report_timing.rpt
report_power  > reports/report_power.rpt
report_area   > reports/report_area.rpt
report_qor    > reports/report_qor.rpt

#write_dft_atpg -library /home/dkits/FreePDK45/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Verilog/NangateOpenCellLibrary.v
write_hdl > outputs/ascon_netlist_dft.v
write_sdc > outputs/ascon_sdc_dft.sdc
write_sdf -nonegchecks -edges check_edge -timescale ns -recrem split -setuphold split > outputs/dft_delays.sdf
#write_scandef > outputs/ascon_scanDEF.scandef

