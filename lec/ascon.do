set log file ascon_lec.log -replace
read library ../lib/NangateOpenCellLibrary_typical.v -verilog -both
read design \
	../hdl/encryption/ascon_enc.v \
   	../hdl/encryption/fc_enc.v \
    	../hdl/encryption/ascon_encryption.v \
    	../hdl/permutation/ascon_permutation.v \
    	../hdl/roundcounter.v \
    	../hdl/permutation/roundconstant.v \
    	../hdl/permutation/substitution_layer.v \
    	../hdl/permutation/linear_layer.v \
	-verilog -golden

read design ../syn/outputs/ascon_netlist.v -verilog -revised

report design data
report black box
report module 
set analyze option -auto
set flatten model -seq_constant
set system mode lec 
add compare points -all
compare
