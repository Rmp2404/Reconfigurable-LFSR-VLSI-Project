`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 09:41:14
// Design Name: 
// Module Name: lfsr_tb
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

// lfsr_tb.v - Testbench for Basic LFSR
module lfsr_tb;

reg clk, reset, enable;
wire [2:0] lfsr_out;

lfsr #(3, 3'b101) lfsr_inst (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .lfsr_out(lfsr_out)
);


    // Clock generation
    always #5 clk = ~clk;

initial begin
    // Test sequence
    clk = 0;
    reset = 1;
    enable = 0;
    #10 reset = 0;
    enable = 1;

    #100 $stop;
end

initial begin
        $monitor("At time %t: lfsr_out = %b", $time, lfsr_out);
    end

endmodule