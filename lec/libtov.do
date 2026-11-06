set log file lib_v.log -replace
read library ../lib/NangateOpenCellLibrary_typical.lib -liberty -both
write library NangateOpenCellLibrary_typical.v -verilog -replace
