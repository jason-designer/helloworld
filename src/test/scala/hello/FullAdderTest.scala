package hello

import chisel3._
import chiseltest._
import org.scalatest._

class FullAdderTest extends FlatSpec with ChiselScalatestTester{
    behavior of "FullAdder"
    // test class body here
    it should "do test" in {
        //test case body here
        test(new FullAdder) { m =>
            //test body here
            //val randNum = new Random
            //val a = randNum.nextInt(256)
            for(i <- 0 until 7) {       //test 0 1 2 3 4 5 6 7
                val a = i & 0x01
                val b = (i & 0x02) >> 1
                val c = (i & 0x04) >> 2
                m.io.a.poke(a.U)
                m.io.b.poke(b.U)
                m.io.cin.poke(c.U)
                m.clock.step(1)
                m.io.s.expect(((a + b + c) & 0x01).U)
                m.io.cout.expect((((a + b + c) & 0x02) >> 1).U)
            }
        }
    }
}



