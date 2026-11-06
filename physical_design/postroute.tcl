set_db extract_rc_engine post_route
set_db extract_rc_effort_level low

reset_parasitics
extract_rc

set_db opt_hold_target_slack 0.03
opt_design -post_route -hold

write_db hold_fixed.inn

time_design -post_route
time_design -post_route -hold

check_place

set_db check_drc_check_only all
set_db check_drc_exclude_pg_net false
set_db check_drc_short_only false
set_db check_drc_report post_hold.drc.rpt

check_drc
check_connectivity
	
write_db -rc_extract post_route
