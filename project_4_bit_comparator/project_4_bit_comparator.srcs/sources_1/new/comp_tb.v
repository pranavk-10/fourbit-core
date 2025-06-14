`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2025 00:02:34
// Design Name: 
// Module Name: comp_tb
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


module tb_comparator_4bit;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;

    // Outputs
    wire A_gt_B;
    wire A_eq_B;
    wire A_lt_B;

    // Instantiate the Unit Under Test (UUT)
    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        // Monitor output
        $monitor("Time = %0d : A = %b, B = %b | A_gt_B = %b, A_eq_B = %b, A_lt_B = %b", 
                  $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        // Test Case 1: A > B
        A = 4'b0110; B = 4'b0011; #10;

        // Test Case 2: A < B
        A = 4'b0010; B = 4'b1001; #10;

        // Test Case 3: A == B
        A = 4'b1010; B = 4'b1010; #10;

        // Test Case 4: Edge case A = 0, B = 15
        A = 4'b0000; B = 4'b1111; #10;

        // Test Case 5: Edge case A = 15, B = 0
        A = 4'b1111; B = 4'b0000; #10;

        $finish;
    end

endmodule

