`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 17:16:36
// Design Name: 
// Module Name: verilog_qns_no_9
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module verilog_qns_no_9(
input x,clk,reset,
output  reg detected);
reg[2:0]state,next_state;
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100,
          s5=3'b101,
          s6=3'b110;
   always@(posedge clk or posedge reset) begin
   if(reset)
   state<=0;
   else 
   state <=next_state;
   end
   always @ (*)begin
   detected=0;
   next_state=state;
   case(state)
   s0:next_state=x?s1:s0;
   s1:next_state=x?s1:s2;
   s2:next_state=x?s3:s2;
   s3:next_state=x?s4:s2;
   s4:next_state=x?s1:s5;
   s5:next_state=x?s1:s2;
   default:begin
   next_state=s0;
   detected=1;
   end
 endcase
   end
   
       
         

endmodule
