`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 16:00:38
// Design Name: 
// Module Name: lfsr_config_tb
// Project Name: LFSR
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

// lfsr_config_tb.v - Testbench for Reconfigurable LFSR
module tb_lfsr_config;

    reg clk;
    reg reset;
    reg enable;
    reg [2:0] config_taps;
    wire [2:0] lfsr_out;

    // Instantiate the Configurable LFSR
    lfsr_config #(
        .WIDTH(3)
    ) uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .config_taps(config_taps),
        .lfsr_out(lfsr_out)
    );

    // Clock generation
    always #5 clk = ~clk; // Clock period of 10 time units

    // Test sequence
    initial begin
        clk = 0;
        reset = 1;
        enable = 0;
        config_taps = 3'b110; // Example taps for testing
        
        // Apply reset
        #10 reset = 0;
        
        // Enable LFSR
        enable = 1;
        
        // Run simulation for a sufficient time to observe output
        #100;
        
        // Finish simulation
        $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("At time %t: lfsr_out = %b", $time, lfsr_out);
    end

endmodule


