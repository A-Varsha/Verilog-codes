`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 21:35:23
// Design Name: 
// Module Name: overlaping_moore_101
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


module overlaping_moore_101(
input clk,reset,din,
     output reg  dout);
     parameter s0=2'b00,
     s1=2'b00,
     s2=2'b00,
     s3=2'b00;
     reg[1:0]state,next_state;
    
    
     always@ (posedge clk or posedge reset)begin
     if(reset)begin
     dout<=1'b0;
     state<=s0;
      end else begin
     state<=next_state;
     case(state)
     s3:dout<=1'b1;
     default:dout<=1'b0;
     endcase
     end
     end
     always@(*)begin
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
     if(din)
     next_state=s3;
     else
     next_state=s0;
     end
     s3:begin
     if(din)
     next_state=s1;
     else
     next_state=s2;
     end
     
    default: begin
    next_state=s0;
     end
     endcase
     end
     endmodule
