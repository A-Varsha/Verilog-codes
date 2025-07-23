`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 07:27:20
// Design Name: 
// Module Name: not_gate_switch
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


module not_gate_switch(
input a,
output y);

    supply1 vdd;
    supply0 gnd;
    
    
    pmos p1(y,vdd,a);
    nmos n1(y,gnd,a);
endmodule
