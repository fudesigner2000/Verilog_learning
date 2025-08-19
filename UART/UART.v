/*------------------------------------------------------------------------------
 * File          : UART_TX.v
 * Project       : UART
 * Author        : fu
 * Creation date : Aug 16, 2025
 * Description   :
 *------------------------------------------------------------------------------*/

module UART_TX #() (
	   input clk,reset,
       input [7:0]data,
	   input byte_ready,
	   output TXD
       );
	   reg [9:0]shift_reg;
	   assign TXD = shift_reg[0];
	   
	   always@(posedge clk or negedge reset)
		   begin
			   if(!reset) shift_reg <= 10'b1111111111;
			   else if(byte_ready) shift_reg <= {1'b1,data,1'b0};//当byte_ready为1的时候，此时TX的输出为开始位，低电平
			   else shift_reg <= {1'b1,shift_reg[9:1]};
		   end

endmodule