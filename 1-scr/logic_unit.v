`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2026 11:21:16 PM
// Design Name: 
// Module Name: logic_unit
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


module logic_unit(
    input [3:0] A,
    input [3:0] B,
    output [3:0] AND_out,
    output [3:0] OR_out,
    output [3:0] XOR_out,
    output [3:0] NOT_out
    );
    assign AND_out = A & B;
    assign OR_out = A | B;
    assign XOR_out = A ^ B;
    assign NOT_out = ~A;
endmodule
