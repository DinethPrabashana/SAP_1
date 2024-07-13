module reg_b (data_out, data_in, lb_bar, clk);

input [7:0] data_in;
input lb_bar, clk ; 
output reg[7:0] data_out;

always @(posedge clk )
begin 
    if (~lb_bar)
    begin
        data_out <= data_in ;
    end
end
endmodule