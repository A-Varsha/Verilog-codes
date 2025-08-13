`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 21:37:38
// Design Name: 
// Module Name: moore_model
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


module moore_model( 
input  clk,reset,din,
output reg  detected);
reg [2:0]state,next_state;
parameter s0=3'd0,
s1=3'd1,
s2=3'd2,
s3=3'd3,
s4=3'd4;
always @(posedge clk or posedge reset )begin
if(reset)
state <=s0;
else 
state <=next_state;
end
always @(*)begin
next_state=state;
detected =0;
case(state)
s0:next_state=din?s1:s0;
s1:next_state=din?s2:s0;
s2:next_state=din?s2:s3;
s3:next_state=din?s4:s0;
s4:begin
next_state=din?s2:s0;
detected=1;
end
endcase
end
endmodule
