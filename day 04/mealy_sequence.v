`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 23:15:29
// Design Name: 
// Module Name: mealy_sequence
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


module mealy_sequence(
input clk,reset,din,
output reg detected);
reg [2:0]state,next_state;
parameter s0=2'd0,
s1=2'd1,
s2=2'd2,
s3=2'd3;
always @(posedge clk or posedge reset )begin
next_state=state;
detected=0;
case(state)
s0:next_state=din?s1:s0;
s1:next_state=din?s2:s0;
s2:next_state=din?s3:s3;
s3:begin
if(din)begin
detected=1;
next_state=s1;
end
else begin
next_state=s0;
end
end
endcase
end

endmodule

