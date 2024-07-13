module data_ram(data_in, write_addr, read_addr,write_clk, data_output_rm);

input [7:0] data_in ;
input [3:0] write_addr, read_addr ;
input write_clk ;
output reg [7:0] data_output_rm ;

reg [7:0]stored_data[15:0] ;

always @(posedge write_clk)
begin 
    stored_data[write_addr] <= data_in ;
end 

always @(read_addr)
begin 
    data_output_rm <= stored_data[read_addr] ;
end 

endmodule 