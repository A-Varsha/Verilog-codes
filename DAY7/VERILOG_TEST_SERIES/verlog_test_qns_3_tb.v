`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 16:32:27
// Design Name: 
// Module Name: verlog_test_qns_3_tb
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

module verlog_test_qns_3_tb();
//8bit
    reg  [7:0] a8, b8;
    reg        cin8;
    wire [7:0] sum8;
    wire       cout8;
//16-bit 
    reg  [15:0] a16, b16;
    reg         cin16;
    wire [15:0] sum16;
    wire        cout16;

    verilog_test_qns_no_3 #(8) FA8 (
        .a(a8), .b(b8), .cin(cin8),
        .sum(sum8), .cout(cout8)
    );

    verilog_test_qns_no_3 #(16) FA16 (
        .a(a16), .b(b16), .cin(cin16),
        .sum(sum16), .cout(cout16)
    );

    initial begin
        a8   = 8'hA5;  
        b8   = 8'h5A;  
        cin8 = 1'b1;   
        #5 $strobe("Time=%0t | 8-bit: A=%0d, B=%0d, Cin=%b => Sum=%0d, Cout=%b",
                    $time, a8, b8, cin8, sum8, cout8);

        a16   = 16'h1234;  
        b16   = 16'h4321;  
        cin16 = 1'b0;
        #5 $strobe("Time=%0t | 16-bit: A=%0d, B=%0d, Cin=%b => Sum=%0d, Cout=%b",
                    $time, a16, b16, cin16, sum16, cout16);

        a16   = 16'hFFFF;
        b16   = 16'h0001;
        cin16 = 1'b1;
        #5 $strobe("Time=%0t | 16-bit: A=%h, B=%h, Cin=%b => Sum=%h, Cout=%b",
                    $time, a16, b16, cin16, sum16, cout16);

        #10 $finish;
    end

endmodule









