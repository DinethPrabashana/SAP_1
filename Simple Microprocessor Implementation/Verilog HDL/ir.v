module ir(y_1, y_2, d_in, li_bar ,clr, clk );

input [7:0] d_in ;
input li_bar , clr ,clk ;
output reg [3:0] y_1;  // y_1 msb
output reg [3:0] y_2; // lsb


reg [3:0]temp ;

always @(posedge clk or negedge clr)
begin 
	if (~clr) 
	begin 
		y_1 <= 4'b0000 ;
		y_2 <= 4'b0000 ;
	end
	else
	begin 
		if (~li_bar)
		begin 
			y_1 <= d_in[7:4] ;
			y_2 <= d_in[3:0] ;
		end
	end
end


endmodule 
