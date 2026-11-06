create_library_set -name libs_fast -timing {../lib/NangateOpenCellLibrary_fast.lib}
create_library_set -name libs_low_temp -timing {../lib/NangateOpenCellLibrary_low_temp.lib}
create_library_set -name libs_slow -timing {../lib/NangateOpenCellLibrary_slow.lib}
create_library_set -name libs_typical -timing {../lib/NangateOpenCellLibrary_typical.lib}
create_library_set -name libs_worst_low -timing {../lib/NangateOpenCellLibrary_worst_low.lib}

create_timing_condition -name tc_fast -library_sets {libs_fast}
create_timing_condition -name tc_low_temp -library_sets {libs_low_temp}
create_timing_condition -name tc_slow -library_sets {libs_slow}
create_timing_condition -name tc_typical -library_sets {libs_typical}
create_timing_condition -name tc_worst_low -library_sets {libs_worst_low}

create_rc_corner -name rc_default -cap_table ../rc/NCSU_FreePDK_45nm.capTbl

create_delay_corner -name dc_fast \
	-early_timing_condition tc_fast \
	-late_timing_condition tc_fast \
	-early_rc_corner rc_default \
	-late_rc_corner rc_default

create_delay_corner -name dc_low_temp \
	-early_timing_condition tc_low_temp \
	-late_timing_condition tc_low_temp \
	-early_rc_corner rc_default \
	-late_rc_corner rc_default

create_delay_corner -name dc_slow \
	-early_timing_condition tc_slow \
	-late_timing_condition tc_slow \
	-early_rc_corner rc_default \
	-late_rc_corner rc_default

create_delay_corner -name dc_typical \
	-early_timing_condition tc_typical \
	-late_timing_condition tc_typical \
	-early_rc_corner rc_default \
	-late_rc_corner rc_default

create_delay_corner -name dc_worst_low \
	-early_timing_condition tc_worst_low \
	-late_timing_condition tc_worst_low \
	-early_rc_corner rc_default \
	-late_rc_corner rc_default

create_constraint_mode -name functional -sdc_files {../constraints/constraints_top.sdc}

create_analysis_view -name view_fast \
	-constraint_mode functional -delay_corner dc_fast

create_analysis_view -name view_low_temp \
	-constraint_mode functional -delay_corner dc_low_temp

create_analysis_view -name view_slow \
	-constraint_mode functional -delay_corner dc_slow

create_analysis_view -name view_typical \
	-constraint_mode functional -delay_corner dc_typical

create_analysis_view -name view_worst_low \
	-constraint_mode functional -delay_corner dc_worst_low

set allview  {
	view_fast
	view_low_temp
	view_slow
	view_typical
	view_worst_low
}

set_analysis_view -setup $allview -hold $allview




