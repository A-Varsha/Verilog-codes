`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 22:12:43
// Design Name: 
// Module Name: com_kmap
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


module com_kmap(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out =|{&{!b,!c},&{!a,!d}&{b,c,d},&{a,c,d}};
endmodule

