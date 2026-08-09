`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2026 11:23:30 PM
// Design Name: 
// Module Name: subtractor_4bit_tb
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


module subtractor_4bit_tb( );
reg [3:0] A;
reg [3:0] B;
wire [3:0] Diff;
wire Cout;
subtractor_4bit uut(A,B,Diff,Cout);
initial begin
    A=4'b0111;B=4'b0011; #10;
    A=4'b0011;B=4'b0111; #10;
    A=4'b0101;B=4'b0101; #10;
    A=4'b1111;B=4'b0001; #10;
    A=4'b1000;B=4'b0011; #10;
    $finish;
end
endmodule
