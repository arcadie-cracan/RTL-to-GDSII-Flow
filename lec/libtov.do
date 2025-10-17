set log file lib_v.log -replace
read library $DDK_CDN_GSCLIB045_DIR/gsclib045/timing/slow_vdd1v0_basicCells.lib -liberty
write library slow_vdd1v0_basicCells.v -verilog -replace
