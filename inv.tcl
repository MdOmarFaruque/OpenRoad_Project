package require openlane
prep -design inverter1 -tag run1 -overwrite
run_synthesis
run_floorplan
run_placement
run_routing
run_magic
