module pc(cp, clk, reset, count);

input cp, clk, reset ;
output reg [3:0]count ;


always @(posedge clk or negedge reset )
begin 
    if (~reset) count <= 4'b0000 ;
	 else
	 begin 
		if (cp) count <= count + 4'b0001 ;
	 end
end 


endmodule 