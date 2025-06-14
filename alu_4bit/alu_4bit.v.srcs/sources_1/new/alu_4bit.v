`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 22:06:31
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


module alu_4bit (a,b,opcode,result,zero);
input [3:0] a,b;
input [2:0] opcode;
output reg [3:0] result;
output reg zero;

always @(*) begin
result = 4'b0000;

    case(opcode)
    3'b000: result = a + b;
    3'b001: result = a-b;
    3'b010: result = a&b;
    3'b011: result = a|b;
    3'b100: result = a^b;
    3'b101: result = a<<1;
    3'b110: result = a>>1;
    3'b111: result = (a == b) ? 4'b0000 : 4'b0001;
        default: begin
            result = 4'bxxxx;
            $display("Invalid opcode");
        end
    endcase
    
    zero = (result == 4'b0000) ? 1'b1 : 1'b0;
end
endmodule






