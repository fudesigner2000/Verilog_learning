/*------------------------------------------------------------------------------
 * File          : adder.v
 * Project       : adder
 * Author        : fu
 * Creation date : Aug 13, 2025
 * Description   : adder,used By Synopsys euclide 2024
 *------------------------------------------------------------------------------*/

module adder #() (
       input a,
	   input b,
	   output c);
  
       assign c = a+b;
           

endmodule