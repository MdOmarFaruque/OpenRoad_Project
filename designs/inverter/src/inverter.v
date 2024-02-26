`default_nettype none
module inverter(
  input in,  // Net type explicitly declared as 'wire'
  output wire out  // Net type explicitly declared as 'wire'
);

assign out = !in;

endmodule

`default_nettype wire
