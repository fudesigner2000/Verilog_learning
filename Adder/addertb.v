/*------------------------------------------------------------------------------
 * File          : addertb.v
 * Project       : adder
 * Author        : fu
 * Creation date : Aug 13, 2025
 * Description   : adder_tb
 *------------------------------------------------------------------------------*/
module addertb ;

      reg a;
	  reg b;
	  wire c;
	  
	  adder u_adder (
	  	.a(a),
	  	.b(b),
	  	.c(c)
	  );
	  
	  initial begin
		 #0  a=1;
		     b=1;
		 #20 a=0;
		     b=1;
	         #20 a=1;
		     b=1;
	     $display("Tesbench Finish");
	  end

          initial begin
             $monitor($time,,"a=%b,b=%b,c=%b",a,b,c);
          end
	  
	  initial begin
		  #80 $finish;
	  end
	  initial begin
	/*    $vcdpluson;
		  $vcdplusmemon;
		  $vcdplusdeltacycleon;
		  $vcdplusfile("sim1.vpd"); */
		  $dumpfile("tb.vcd");
		  $dumpvars(0,addertb);
	  end

endmodule