set_db init_read_netlist_files ../syn/outputs/ascon_netlist.v
set_db init_lef_files {../lef/NangateOpenCellLibrary.macro.lef ../lef/NangateOpenCellLibrary.tech.lef}
set_db init_power_nets VDD
set_db init_ground_nets VSS

set_db init_mmmc_files ../mmmc/mmmc.tcl

set_db design_process_node 45

read_mmmc ../mmmc/mmmc.tcl
read_physical -lef {../lef/NangateOpenCellLibrary.tech.lef ../lef/NangateOpenCellLibrary.macro.lef}

read_netlist ../syn/outputs/ascon_netlist.v -top Ascon
init_design

set_db timing_analysis_type ocv

connect_global_net VDD -type pg_pin -pin_base_name VDD -inst_base_name *
connect_global_net VSS -type pg_pin -pin_base_name VSS -inst_base_name *

write_db init
