`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 00:09:22
// Design Name: 
// Module Name: inst_reg_tb
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


module inst_reg_tb();
reg clk,load,rst;
reg [3:0] acc_in,opA_in,opB_in;
wire [3:0] acc_out,opA_out,opB_out;
reg [2:0] inst_in;
wire [2:0]inst_out;

inst_reg dut(
    .clk(clk),
    .load(load),
    .rst(rst),
    .inst_in(inst_in),
    .inst_out(inst_out),
    .opA_in(opA_in),
    .opA_out(opA_out),
    .opB_in(opB_in),
    .opB_out(opB_out),
    .acc_in(acc_in),
    .acc_out(acc_out)
);

always #5 clk = ~clk;

    initial begin
        // Initialize all inputs
        clk = 0;
        rst = 1;
        load = 0;
        inst_in = 3'b000;
        opA_in = 4'b0000;
        opB_in = 4'b0000;
        acc_in = 4'b0000;
        
        #10 rst = 0; // Deassert reset

        // Load first instruction
        #10 load = 1;
        inst_in = 3'b101;
        opA_in = 4'b1100;
        opB_in = 4'b0011;
        acc_in = 4'b1001;

        #10 load = 0; // Hold values

        // Change input values (should not affect outputs)
        #10 inst_in = 3'b011;
        opA_in = 4'b1111;
        opB_in = 4'b0000;
        acc_in = 4'b0101;

        #10 $stop; // Stop simulation
    end

endmodule
