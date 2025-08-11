`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 23:14:40
// Design Name: 
// Module Name: tff_code_tb
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


module tff_code_tb();
    reg clk, reset, T;
    wire Q;

    tff_code uut (
        .clk(clk),
        .reset(reset),
        .T(T),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        $monitor($time, " clk=%b reset=%b T=%b Q=%b", clk, reset, T, Q);
        
        reset = 1; T = 0; #10;  
        reset = 0; T = 1; #20;  
        T = 0; #20;              
        T = 1; #30;             
        $finish;
    end


endmodule
