`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2026 12:07:40 AM
// Design Name: 
// Module Name: alu_4bit_tb
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


module alu_4bit_tb( );
reg [3:0] A;
reg [3:0] B;
reg [2:0] OP;
wire [3:0] Result;
wire Cout;
wire Zero;
wire Negative;
wire Overflow;
alu_4bit uut(A,B,OP,Result,Cout,Zero,Negative,Overflow);
initial begin
    A=4'b0101;
    B=4'b0011;
    OP=3'b000; #10;
    OP=3'b001; #10;
    OP=3'b010; #10;
    OP=3'b011; #10;
    OP=3'b100; #10;
    OP=3'b101; #10;
    A=4'b0101;
    B=4'b0101;
    OP=3'b001; #10;
    A=4'b0111;
    B=4'b0001;
    OP=3'b000; #10;
    A=4'b0111;
    B=4'b1111;
    OP=3'b001; #10;
    A=4'b1111;
    B=4'b0001;
    OP=3'b000; #10;
    $finish;
end
endmodule
