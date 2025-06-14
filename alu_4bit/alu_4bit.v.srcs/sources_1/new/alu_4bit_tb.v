`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 22:50:35
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


module alu_4bit_tb();
reg [3:0] a,b;
reg [2:0] opcode;
wire [3:0] result;
wire zero;

alu_4bit dut(
    .a(a),
    .b(b),
    .opcode(opcode),
    .result(result),
    .zero(zero)
);

initial begin
    $monitor("Time=%0t | a=%b, b=%b, opcode=%b | result=%b, zero=%b", 
              $time, a, b, opcode, result, zero);
end

initial begin
    // Manually written test cases
    a = 4'b1010; b = 4'b0101; 

    #10 opcode = 3'b000;
    #10 opcode = 3'b001;
    #10 opcode = 3'b010;
    #10 opcode = 3'b011;
    #10 opcode = 3'b100;
    #10 opcode = 3'b101;
    #10 opcode = 3'b110;
    #10 opcode = 3'b111;
    
    // Edge cases
    #10 a = 4'b0000; b = 4'b0000; opcode = 3'b000;  // 0 + 0
    #10 a = 4'b1111; b = 4'b1111; opcode = 3'b001;  // F - F
    #10 a = 4'b1010; b = 4'b1010; opcode = 3'b010;  // A & A
    #10 a = 4'b0001; b = 4'b1111; opcode = 3'b011;  // 1 | F
    #10 a = 4'b1001; b = 4'b1001; opcode = 3'b100;  // 9 ^ 9
    
    // Randomized Testing (10 cases)
    repeat(10) begin
        #10 a = $random; 
            b = $random;
            opcode = $random % 8; // opcode range 0 to 7
    end
    
    #10 $finish;
end
endmodule
