`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 16:42:25
// Design Name: 
// Module Name: lfsr_top_tb
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

// lfsr_top_tb.v - Testbench for Top-Level LFSR

module lfsr_top_tb;

    reg clk;
    reg reset;
    reg enable;
    reg use_config_lfsr;
    reg [2:0] config_taps;
    wire [2:0] lfsr_out;

    // Instantiate the lfsr_selector module
    lfsr_top #(
        .WIDTH(3)
    ) uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .use_config_lfsr(use_config_lfsr),
        .config_taps(config_taps),
        .lfsr_out(lfsr_out)
    );

    // Clock generation
    always #5 clk = ~clk;
    

    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        enable = 0;
        use_config_lfsr = 0;
        config_taps = 3'b110;

        // Release reset
        #10 reset = 0;

        // Test static LFSR
        enable = 1;
        
        // Set use_config_lfsr to 0 and observe
        #20 use_config_lfsr = 0;
        #40; // Observe the output for a while
        
        // Set use_config_lfsr to 1 and observe
        #20 use_config_lfsr = 1;
        #40; // Observe the output for a while
        
        // Set use_config_lfsr to 0 and observe again
        #20 use_config_lfsr = 0;
        #40; // Observe the output for a while
        
        
        #100;
        // Test configurable LFSR
        // Wait some time to observe the output

        // End simulation
        $stop;
    end
    
    initial begin
        $monitor("At time %t: lfsr_out = %b", $time, lfsr_out);
    end


endmodule


