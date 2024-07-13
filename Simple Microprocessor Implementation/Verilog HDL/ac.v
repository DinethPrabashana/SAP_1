module ac(y_1 , y_2 , data_in, la_bar , clk);

input [7:0] data_in;
input la_bar , clk ;
output reg [7:0] y_1; // out to the alu 
output reg [7:0] y_2 ; //out to the bus 


always @(posedge clk)
begin 
    if (~la_bar)
    begin
        y_1 <= data_in ;
		  y_2 <= data_in ;
    end
end

endmodule 