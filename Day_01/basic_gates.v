`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 13:39:23
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
output y0,
output y1,
output y2,
output y3,
output y4,
output y5,
output y6,
input a,
input b
     );
    assign y0 = a&b;
    assign y1 = a|b;
    assign y2 = ~(a&b);
    assign y3 = ~(a|b);
    assign y4 = ~a;
    assign y5 = a^b;
    assign y6 = ~(a^b);

endmodule
