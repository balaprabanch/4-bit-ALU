`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2026 10:10:53 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb( );
reg A,B,Cin;
wire Sum,Cout;
full_adder uut(A,B,Cin,Sum,Cout);
initial begin
    A=0;B=0;Cin=0; #10;
    A=0;B=0;Cin=1; #10;
    A=0;B=1;Cin=0; #10;
    A=0;B=1;Cin=1; #10;
    A=1;B=0;Cin=0; #10;
    A=1;B=0;Cin=1; #10;
    A=1;B=1;Cin=0; #10;
    A=1;B=1;Cin=1; #10;
    $finish;
end
endmodule
