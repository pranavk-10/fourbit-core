`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 04:18:19
// Design Name: 
// Module Name: top
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


module top(
input clk,
input rst,
input load,
input enable,
input [3:0] opA_in, 
input [3:0] opB_in,
input [2:0] opcode_in,
output [3:0] result 
);

// IR outputs
wire [2:0] opcode;
wire [3:0] A;
wire [3:0] B;
wire [3:0] acc_in;

//ALU outputs
//wire [3:0] result;

//PC AND MEM outputs
wire [3:0] pc_out;
wire [2:0] opcodee;

inst_reg IR(
    .clk(clk),
    .rst(rst),
    .load(load),
    .opA_in(opA_in),  
    .opB_in(opB_in),  
    .inst_in(opcodee),
    .inst_out(opcode),
    .opA_out(A),
    .opB_out(B),
    .acc_in(result)
    );
    
 alu_4bit ALU(
    .a(A),
    .b(B),
    .opcode(opcode),
    .result(result)
    );
 
 pc PC(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .pc_out(pc_out) 
    );
    
 inst_mem MEM(
    .addr(pc_out),
    .opcodee(opcodee)
    );
  
endmodule
