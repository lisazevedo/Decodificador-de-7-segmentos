module tb_decoder;

reg clk, rst_n, 
reg [3:0] dec_in;

wire [6:0] dec_out;

initial begin
	clk = 0;
	rst_n = 1;
	dec_in = 4'd0;
	
	@(negedge)
	rst_n=1;
	@(negedge)
	rst_n=0;
	
	repeat(10) begin
		@(negedge)
	end
	$stop
end

always begin 
	#5 clk =~clk;
	
end

endmodule
