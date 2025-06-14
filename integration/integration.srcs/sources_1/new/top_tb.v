module top_tb;
    reg clk, rst, load;
    reg [3:0] opA_in, opB_in;
    reg [2:0] opcode_in;
    
    wire [3:0] result;

    // Instantiate the top module
    top dut(
        .clk(clk),
        .rst(rst),
        .load(load),
        .opA_in(opA_in),
        .opB_in(opB_in),
        .opcode_in(opcode_in),
        .result(result)
    );

    // Clock Generation
    always #5 clk = ~clk;

    // Test Sequence
    initial begin
        clk = 0;
        rst = 1;
        load = 0;
        opA_in = 4'b0000;
        opB_in = 4'b0000;
        opcode_in = 3'b000;

        #10 rst = 0;  
        #10 load = 1; opA_in = 4'b0010; opB_in = 4'b0011; opcode_in = 3'b000;
        #10 load = 0; 
        #20 load = 1; opA_in = 4'b0101; opB_in = 4'b0001; opcode_in = 3'b001;
        #10 $finish;
    end
endmodule
