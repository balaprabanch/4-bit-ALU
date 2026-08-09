`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2026 11:40:33 PM
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] OP,
    output reg [3:0] Result,
    output reg Cout,
    output Zero,
    output Negative,
    output Overflow
    );
    wire [3:0] add_result;
    wire [3:0] sub_result;
    wire [3:0] and_result;
    wire [3:0] or_result;
    wire [3:0] xor_result;
    wire [3:0] not_result;
    wire add_cout;
    wire sub_cout;
    full_adder_4bit ADD(
        .A(A),
        .B(B),
        .Cin(1'b0),
        .Sum(add_result),
        .Cout(add_cout)
    );
    subtractor_4bit SUB(
        .A(A),
        .B(B),
        .Diff(sub_result),
        .Cout(sub_cout)
    );
    logic_unit LOGIC(
        .A(A),
        .B(B),
        .AND_out(and_result),
        .OR_out(or_result),
        .XOR_out(xor_result),
        .NOT_out(not_result)
    );
    always @(*) begin
        case (OP)
            3'b000: begin
                Result = add_result;
                Cout = add_cout;
            end
            3'b001: begin 
                Result = sub_result;
                Cout = sub_cout;
            end
            3'b010: begin 
                Result = and_result;
                Cout = 1'b0;
            end
            3'b011: begin
                Result = or_result;
                Cout = 1'b0;
            end
            3'b100: begin
                Result = xor_result;
                Cout = 1'b0;
            end
            3'b101: begin
                Result = not_result;
                Cout = 1'b0;
            end
            default: begin
                Result = 4'b0000;
                Cout = 1'b0;
            end
        endcase
    end
    assign Zero = (Result == 4'b0000);
    assign Negative = Result[3];
    assign Overflow = (OP == 3'b000) ? ((~(A[3] ^ B[3])) & (Result[3] ^ A[3])): (OP == 3'b001) ? ((A[3] ^ B[3]) & (Result[3] ^ A[3])) : 1'b0;
endmodule
