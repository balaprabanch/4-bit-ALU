`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2026 10:42:56 PM
// Design Name: 
// Module Name: full_adder_4bit_tb
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


module full_adder_4bit_tb( );
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] Sum;
wire Cout;
full_adder_4bit uut(A,B,Cin,Sum,Cout);
initial begin 
    A=4'b0000;B=4'b0000;Cin=1'b0; #10;
    A=4'b0011;B=4'b0010;Cin=1'b0; #10;
    A=4'b0101;B=4'b0011;Cin=1'b0; #10;
    A=4'b0111;B=4'b0001;Cin=1'b0; #10;
    A=4'b1111;B=4'b0001;Cin=1'b0; #10;
    A=4'b1010;B=4'b0101;Cin=1'b0; #10;
    A=4'b1111;B=4'b1111;Cin=1'b0; #10;
    $finish;
end
endmodule
