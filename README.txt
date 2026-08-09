Arithmetic Logic Unit (ALU-4bit):
A 4-bit Arithmetic Logic Unit (ALU) designed using Verilog HDL and implemented/simulated using Xilinx Vivado.

Overview:
This project implemented a 4-bit ALU capable of performing arithmetic and logical operations on two 4-bit inputs.

The ALU was designed hierarchically using:
- 4-bit Full Adder
- 4-bit Subtracter
- Logic Unit
- Multiplexers
- Status Flags

Operations:
|input OP | Operations|
-----------------------
|   000   |    ADD    |
|   001   |    SUB    |
|   010   |    AND    |
|   011   |    OR     |
|   100   |    XOR    |
|   101   |    NOT    |
-----------------------

Inputs:
- "A [3:0]" - First 4-bit operand
- "B [3:0]" - Second 4-bit operand
- "OP [2:0]"- Operation select

Outputs:
- "Result [3:0]" - 4-bit ALU Result
- "Cout"         - Carry-out
- "Zero"         - Result is Zero
- "Negative"     - Result MSB is 1
- "Overflow"     - Signed arithmetic Overflow

Tools:
- Verilog HDL
- Xilinx Vivado 2026.1
- Vivado Simulator 
- Target Device: xc7vx485tffg1157-1

Implementation:
The design was successfullly:
- Synthesized
- Implemented
- Checked using vivado reports
- Verified through simulation

Result:
The outputs are verified by testbench and waveform.
