# set path for library
set_db init_lib_search_path "\
  $env(DDK_CDN_GSCLIB045_DIR)/gsclib045/timing \
  $env(DDK_CDN_GSCLIB045_DIR)/gsclib045/lef \
  $env(PDK_DIR)/qrc/rcworst \
"

# set path for RTL sources
set_db init_hdl_search_path ../src

# read library
read_libs slow_vdd1v0_basicCells.lib

# read LEFs
read_physical -lefs {gsclib045_tech.lef gsclib045_macro.lef}

# read parasitics
read_qrc qrcTechFile

# read the design files (parse the code)
read_hdl counter.v

# elaborate the design
elaborate

# read the design constraints
read_sdc ../constraints/constraints_top.sdc

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
set_db verification_directory_naming_style lec/%s

syn_generic
syn_map
syn_opt

# generate synthesis reports
report_timing > reports/report_timing.rpt
report_power  > reports/report_power.rpt
report_area   > reports/report_area.rpt
report_qor    > reports/report_qor.rpt



# save netlists
write_hdl > netlists/counter_netlist.v
write_sdc > netlists/counter_sdc.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > netlists/delays.sdf
