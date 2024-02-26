// Code your design here
`default_nettype none

module inverter1(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply  
    inout vssd1,	// User area 1 digital ground  
`endif  
  input in,  // Net type explicitly declared as 'wire'
  output wire out  // Net type explicitly declared as 'wire'
);

assign out = !in;

endmodule

`default_nettype wire
