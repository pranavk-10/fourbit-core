`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2025 23:06:50
// Design Name: 
// Module Name: inst_reg
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


module inst_reg(
input load,
input clk,
input rst,
input [2:0] inst_in,
input [3:0] opA_in,
input [3:0] opB_in,
input [3:0] acc_in,
output reg [2:0] inst_out,
output reg [3:0] opA_out,
output reg [3:0] opB_out,
output reg [3:0] acc_out
);

//Register
always @(posedge clk or posedge rst) begin
    if(rst)
        inst_out <= 3'b000;
    else if(load)
        inst_out<= inst_in;
 end
 
 // REgister A
always @(posedge clk or posedge rst) begin
    if(rst)
        opA_out <= 4'b0000;
     else if(load)
        opA_out <= opA_in;
 end   
 
// Register B
always @(posedge clk or posedge rst) begin
    if(rst)
        opB_out <= 4'b0000;
     else if(load)
        opB_out <= opB_in;
 end 
 
 //Accumulator
 always @(posedge clk or posedge rst) begin
    if(rst)
          acc_out <= 4'b0000;
    else if(load)
          acc_out <= acc_in;
end                
endmodule  

