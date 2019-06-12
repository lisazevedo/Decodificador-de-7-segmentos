`timescale 1 ns / 100 ps

module tb_decoder;

reg clk_t, rst_nt; 
reg [3:0] dec_in;

wire [6:0] dec_out;

fpga1 fpga1_u0 (
	
	.clk(clk_t),
	.rst_n(rst_nt),
	.entrada(dec_in),
	.saida(dec_out)
);

initial begin
	clk_t = 0;
	rst_nt = 1;
	dec_in = 4'd0;
	
	@(negedge clk_t);
		rst_nt=0;
	
	@(negedge clk_t);
		rst_nt=1;
	
	repeat(10) begin
		@(negedge clk_t);
	end
	$stop;
end

always begin 
	#5 clk_t =~clk_t;
	
end

endmodule
