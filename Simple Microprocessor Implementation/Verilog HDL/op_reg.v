module op_reg(data_out, data_in, lo_bar, clk);

input [7:0] data_in;
input lo_bar, clk ; 
output reg[7:0] data_out;

always @(posedge clk )
begin 
    if (~lo_bar)
    begin
        data_out <= data_in ;
    end
end
endmodule