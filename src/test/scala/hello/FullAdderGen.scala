// fullAdderGen.scala
package hello

import chisel3._

object FullAdderGen extends App {
  //chisel3.Driver.execute(Array[String](), () => new FullAdder)    //旧版语法
  (new chisel3.stage.ChiselStage).emitVerilog(new FullAdder,args)   //新版推荐语法
}



