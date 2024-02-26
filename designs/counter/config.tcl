
set ::env(DESIGN_NAME) {counter}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"

set ::env(FP_PDN_MULTILAYER) {1}
set ::env(SDC_FILE) ".designs/counter/src/my_sdc.sdc"
set ::env(CLOCK_NET) $::env(CLOCK_PORT)
set ::env(SYNTH_STRATEGY) "DELAY 0"

set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}
