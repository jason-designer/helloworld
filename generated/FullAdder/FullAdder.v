module FullAdder(
  input   clock,
  input   reset,
  input   io_a,
  input   io_b,
  input   io_cin,
  output  io_s,
  output  io_cout
);
  assign io_s = io_a ^ io_b ^ io_cin; // @[FullAdder.scala 13:23]
  assign io_cout = io_a & io_b | (io_a | io_b) & io_cin; // @[FullAdder.scala 14:28]
endmodule
