`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 01:00:00
// Design Name: 
// Module Name: inst_mem
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


module inst_mem(
input [3:0] addr,
output reg [2:0] opcodee
 );
 
always @(*) begin
    case(addr)
        4'b0000: opcodee = 3'b000;
        4'b0001: opcodee = 3'b001;
        4'b0010: opcodee = 3'b010;
        4'b0011: opcodee = 3'b011;
        4'b0100: opcodee = 3'b100;
        4'b0101: opcodee = 3'b101;
        4'b0110: opcodee = 3'b110;
        4'b0111: opcodee = 3'b111;
        default: opcodee = 3'bxxx;
    endcase
end

endmodule
