`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 06:35:51
// Design Name: 
// Module Name: nand_gate_switch
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


module nand_gate_switch(
input a,b,
output f,
wire w);

supply1 vdd;
supply0 gnd;
pmos p1(f,vdd,a);
pmos p2(f,vdd,b);
nmos ni(f,w,a);
nmos n2(w,gnd,b);
endmodule
