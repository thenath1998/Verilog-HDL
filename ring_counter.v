`timescale 1ns / 1ps

module ring_counter(
    output [3:0] i,
    input rst,
    input clk
    );
	reg [3:0]i;
	
	initial begin
	i = 1;
	end
	
	always@(posedge clk) begin
		if(rst == 1)
			i = 1;
		else
			i = {i[2:0], i[3]};
	end

endmodule
