`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 21:59:22
// Design Name: 
// Module Name: non_over_lap_101
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


module non_over_lap_101(
input clk,reset,din,
     output reg  dout);
     parameter s0=2'b00,
     s1=2'b00,
     s2=2'b00;
     
     reg[1:0]state,next_state;
     reg dout_reg;
    
     always@ (posedge clk or posedge reset)begin
     if(reset)
     state<=s0;
     else
     state<=next_state;
     end
     always@(*)begin
     next_state=state;
     dout=1'b0;
     case(state)
     s0:begin
     if(din)
     next_state=s1;
     else
     next_state=s0;
     end
     s1:begin
     if(~din)
     next_state=s2;
     else
     next_state=s1;
     end
     s2:begin
     if(din)begin
     next_state=s0;
     dout=1'b1;
     end else begin
     next_state=s0;
     end
     dout=(state== s2 && din)?1'b1:1'b0;
     end
     endcase
     end

endmodule
