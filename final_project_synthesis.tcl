// final_project_synthesis.tcl

remove_design -all
set hdlin_vrlg_std "2001"

set search_path "$search_path . ./verilog /w/apps2/public.2/tech/synopsys/32-28nm/SAED32_EDK/lib/stdcell_rvt/db_nldm" 
set target_library "saed32rvt_ff1p16vn40c.db saed32rvt_ss0p95v125c.db"
set link_library "* saed32rvt_ff1p16vn40c.db saed32rvt_ss0p95v125c.db dw_foundation.sldb"
set synthetic_library "dw_foundation.sldb"

analyze -format verilog {FixedPointAdder.v}
analyze -format verilog {FixedPointMultiplier.v}
analyze -format verilog {Image_Classifier.v}
analyze -format verilog {SynLib.v}
analyze -format verilog {compare.v}
analyze -format verilog {dot_product_kernel.v}
analyze -format verilog {posedge_detect.v}
set DESIGN_NAME Image_Classifier

elaborate $DESIGN_NAME
current_design $DESIGN_NAME

ungroup -flatten -all
uniquify

compile -only_design_rule
compile -map high
compile -boundary_optimization
compile -only_hold_time

report_timing -path full -delay min -max_paths 10 -nworst 2 > holdtiming-SID
report_timing -path full -delay max -max_paths 10 -nworst 2 > setuptiming-SID
report_area -hierarchy > area-SID
report_power -hier -hier_level 2 > power-SID
report_resources > resources-SID
report_constraint -verbose > constraint-SID
check_design > check-design-SID
check_timing > timing-SID
