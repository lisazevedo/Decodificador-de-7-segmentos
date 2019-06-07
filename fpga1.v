module fpga1 (

input [3:0] entrada,
input clk,
input rst_n, 
output reg [6:0] saida

);

always @ (posedge clk or negedge rst_n) 
begin 
	
	if (!rst_n) begin
		saida <= 7'b0000000;
	end
	
	else begin
		case (entrada)
		
			4'b0000 : saida <= 7'b1000000; // 0
			4'b0001 : saida <= 7'b1111001; // 1
			4'b0010 : saida <= 7'b0100100; // 2
			4'b0011 : saida <= 7'b0110000; // 3 0110000
			4'b0100 : saida <= 7'b0011001; // 4 0011001
			4'b0101 : saida <= 7'b0010010; // 5 0010010
			4'b0110 : saida <= 7'b0000010; // 6 0000010
			4'b0111 : saida <= 7'b1111000; // 7 1111000
			4'b1000 : saida <= 7'b0000000; // 8 0000000
			4'b1001 : saida <= 7'b0011000; // 9 0011000
		
			default : saida <= 7'b1111111;
		endcase
	end	

end 

//assign saida;



endmodule
