`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2026 11:00:45 PM
// Design Name: 
// Module Name: subtractor_4bit
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


module subtractor_4bit(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Diff,
    output Cout
    );
    wire Cin_sub;
    assign Cin_sub = 1'b1;
    full_adder_4bit subtract(
        .A(A),
        .B(~B),
        .Cin(Cin_sub),
        .Sum(Diff),
        .Cout(Cout)
    );
endmodule
