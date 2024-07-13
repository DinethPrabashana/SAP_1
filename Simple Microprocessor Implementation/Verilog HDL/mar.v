module mar  (q, x, ld_bar, clk);

input [3: 0] x;
input ld_bar, clk ; 
output reg[3 : 0] q;

always @(posedge clk )
begin 
    if (~ld_bar)
    begin
        q <= x ;
    end
end
endmodule