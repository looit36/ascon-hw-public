create_floorplan -core_margins_by die \
	-site FreePDK45_38x28_10R_NP_162NW_34O \
       	-core_density_size 1 0.7 10 10 10 10

read_io_file pins.io

set_db add_rings_target default ; set_db add_rings_extend_over_row 0 ; set_db add_rings_ignore_rows 0 ; set_db add_rings_avoid_short 0 ; set_db add_rings_skip_shared_inner_ring none ; set_db add_rings_stacked_via_top_layer metal10 ; set_db add_rings_stacked_via_bottom_layer metal1 ; set_db add_rings_via_using_exact_crossover_size 1 ; set_db add_rings_orthogonal_only true ; set_db add_rings_skip_via_on_pin {  standardcell } ; set_db add_rings_skip_via_on_wire_shape {  noshape }

add_rings -nets {VDD VSS} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 2 bottom 2 left 2 right 2} -spacing {top 1.5 bottom 1.5 left 1.5 right 1.5} -offset {top 2 bottom 2 left 2 right 2} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none

add_stripes -nets {VDD VSS} -layer metal10 -direction vertical -width 2 -spacing 1.5 -number_of_sets 5 -start_from left -start_offset 10 -stop_offset 10 -switch_layer_over_obs false -max_same_layer_jog_length 2 -pad_core_ring_top_layer_limit metal10 -pad_core_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid none

set_db route_special_via_connect_to_shape { stripe }
route_special -connect {core_pin} -layer_change_range { metal1(1) metal10(10) } -block_pin_target {nearest_target} -core_pin_target {first_after_row_end} -allow_jogging 1 -crossover_via_layer_range { metal1(1) metal10(10) } -nets { VDD VSS } -allow_layer_change 1 -target_via_layer_range { metal1(1) metal10(10) }

write_db floorplan
