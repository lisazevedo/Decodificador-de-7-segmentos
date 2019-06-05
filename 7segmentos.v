// Embarcados - Use como quiser e de os creditos
// Exemplo de Implementacao de um conversor BCD 7 segmentos seguindo o CD4511 da TI
// Thiago Lima - 15/11/2015
 
module BCDto7SEGMENT( a, b, c, d, e, f, g, D, C, B, A , LTbarr, BIbarr, LE );
 
output a, b, c, d, e, f, g;
input D, C, B, A;
input LTbarr, BIbarr, LE;
reg  [6:0] SeteSegmentos;
 
always @(*)
 
if ( LTbarr == 0 )
begin
    SeteSegmentos = 8'b11111111; 
end
else 
begin
 if ( BIbarr == 0 )
 begin
 SeteSegmentos = 8'b00000000; 
 end
 else if(( BIbarr == 1 ) && ( LTbarr == 1 ) && ( LE == 0))
 begin
 case({D, C, B, A})
 4'b0000: SeteSegmentos = 7'b1111110;
 4'b0001: SeteSegmentos = 7'b0110000;
 4'b0010: SeteSegmentos = 7'b1101101;
 4'b0011: SeteSegmentos = 7'b1111001;
 4'b0100: SeteSegmentos = 7'b0110011;
 4'b0101: SeteSegmentos = 7'b1011011;
 4'b0110: SeteSegmentos = 7'b0011111;
 4'b0111: SeteSegmentos = 7'b1110000;
 4'b1000: SeteSegmentos = 7'b1111111;
 4'b1001: SeteSegmentos = 7'b1110011;
 default: SeteSegmentos = 7'b0000000;
 endcase
 end
end
 
assign {a, b, c, d, e, f, g} = SeteSegmentos;
 
endmodule
