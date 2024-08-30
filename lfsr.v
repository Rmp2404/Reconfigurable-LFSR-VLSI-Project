`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 01:24:43
// Design Name: 
// Module Name: lfsr
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


module lfsr #(parameter WIDTH = 3, parameter TAPS = 3'b101)(
    input clk,
    input reset,
    input enable,
    output reg [WIDTH-1:0] lfsr_out
);

always @(posedge clk or posedge reset) begin
    if (reset)
        lfsr_out <= 3'b001;  // Initial value after reset
    else if (enable) begin
        lfsr_out <= {lfsr_out[WIDTH-2:0], ^(lfsr_out & TAPS)};
    end
end

endmodule
