set_db cts_buffer_cells {BUF_X1 BUF_X2 BUF_X4 BUF_X8 BUF_X16 BUF_X32}
set_db cts_inverter_cells {INV_X1 INV_X2 INV_X4 INV_X8 INV_X16 INV_X32}

set_db design_top_routing_layer metal10
set_db design_bottom_routing_layer metal1

create_clock_tree_spec
clock_opt_design

write_db postCTSopt

