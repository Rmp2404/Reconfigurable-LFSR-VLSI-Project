`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 15:59:30
// Design Name: 
// Module Name: lfsr_config
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


// lfsr_config.v - Reconfigurable LFSR Module
module lfsr_config #(parameter WIDTH = 3)(
    input clk,
    input reset,
    input enable,
    input [WIDTH-1:0] config_taps,
    output reg [WIDTH-1:0] lfsr_out
);

always @(posedge clk or posedge reset) begin
    if (reset)
        lfsr_out <= 3'b001;
    else if (enable) begin
        lfsr_out <= {lfsr_out[WIDTH-2:0], ^(lfsr_out & config_taps)};
    end
end

endmodule

