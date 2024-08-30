`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 16:41:40
// Design Name: 
// Module Name: lfsr_top
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


// lfsr_top.v - Top-Level LFSR Module
module lfsr_top #(parameter WIDTH = 3)(
    input clk,
    input reset,
    input enable,
    input use_config_lfsr,         // Control signal to choose LFSR
    input [WIDTH-1:0] config_taps, // Taps for the configurable LFSR
    output [WIDTH-1:0] lfsr_out
);

    wire [WIDTH-1:0] lfsr_out_static;
    wire [WIDTH-1:0] lfsr_out_config;

    // Instantiate the static LFSR
    lfsr #(
        .WIDTH(WIDTH),
        .TAPS(3'b101) // Default taps
    ) static_lfsr (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .lfsr_out(lfsr_out_static)
    );

    // Instantiate the configurable LFSR
    lfsr_config #(
        .WIDTH(WIDTH)
    ) config_lfsr (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .config_taps(config_taps),
        .lfsr_out(lfsr_out_config)
    );

    // Choose the output based on the control signal
    assign lfsr_out = (use_config_lfsr) ? lfsr_out_config : lfsr_out_static;

endmodule

