
set ::env(DESIGN_NAME) {inverter}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(FP_CORE_UTIL) 0.05
set ::env(FP_ASPECT_RATIO) 0.5
set ::env(RUN_CTS) 0
set ::env(DESIGN_IS_CORE) {1}

set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}
