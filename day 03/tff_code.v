`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 23:12:52
// Design Name: 
// Module Name: tff_code
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


module tff_code(
    input wire clk,      
    input wire reset,    
    input wire T,        
    output reg Q         
);
    always @(posedge clk) begin
        if (reset) 
            Q <= 0;          
        else if (T) 
            Q <= ~Q;         
        else 
            Q <= Q;           
    end
endmodule


