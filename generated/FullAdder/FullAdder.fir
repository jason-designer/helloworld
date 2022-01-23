circuit FullAdder :
  module FullAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}

    node _io_s_T = xor(io.a, io.b) @[FullAdder.scala 13:16]
    node _io_s_T_1 = xor(_io_s_T, io.cin) @[FullAdder.scala 13:23]
    io.s <= _io_s_T_1 @[FullAdder.scala 13:8]
    node _io_cout_T = and(io.a, io.b) @[FullAdder.scala 14:20]
    node _io_cout_T_1 = or(io.a, io.b) @[FullAdder.scala 14:37]
    node _io_cout_T_2 = and(_io_cout_T_1, io.cin) @[FullAdder.scala 14:45]
    node _io_cout_T_3 = or(_io_cout_T, _io_cout_T_2) @[FullAdder.scala 14:28]
    io.cout <= _io_cout_T_3 @[FullAdder.scala 14:11]

