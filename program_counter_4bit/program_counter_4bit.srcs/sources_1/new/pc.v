`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 00:34:34
// Design Name: 
// Module Name: pc
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


module pc(
input clk,rst,enable,
input [3:0] pc_in ,
output reg [3:0] pc_out);

always@(posedge clk)begin
    if(rst)
        pc_out <= 4'b0000;
    else if(enable)
        pc_out <= pc_in+1;
end
endmodule
