set log file counter_lec.log -replace
read library $DDK_CDN_GSCLIB045_DIR/gsclib045/timing/slow_vdd1v0_basicCells.lib -liberty -both
read design ../src/counter.v -verilog -golden
read design ../syn/netlists/counter_netlist_dft.v -verilog -revised
add pin constraints 0 SE  -revised
add ignored inputs scan_in -revised
add ignored outputs scan_out -revised
set system mode lec
add compared point -all
compare 


