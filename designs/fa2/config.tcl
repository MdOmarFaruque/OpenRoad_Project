
set ::env(DESIGN_NAME) {fa2}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(BASE_SDC_FILE) $::env(DESIGN_DIR)/fa2.sdc
set ::env(FP_CORE_UTIL) 0.05
set ::env(FP_ASPECT_RATIO) 0.5
set ::env(RUN_CTS) 1
set ::env(CLOCK_PERIOD) ""
set ::env(CLOCK_PORT) ""
set ::env(DESIGN_IS_CORE) {0}


set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}
