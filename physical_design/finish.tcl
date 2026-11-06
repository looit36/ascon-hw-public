add_fillers -base_cells {FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1} -prefix FILLER
route_eco -fix_drc
check_place
set_db check_drc_report final.drc.rpt
check_drc
check_connectivity

time_design -post_route
time_design -post_route -hold

write_db -rc_extract final
write_netlist ascon_pnr.v
write_sdf -recompute_delay_calc ascon_pnr.sdf
write_def ascon_pnr.def
write_stream ascon_pnr.gds

report_qor -file qor.rpt
report_area > area.rpt
report_power > power.rpt
report_timing > timing.rpt
report_gate_count > ge.rpt
