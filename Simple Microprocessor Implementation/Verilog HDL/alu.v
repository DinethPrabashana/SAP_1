module alu(a , b, alu_out, su); // su for subtract enable , eu for enable output to the bus

input [7:0] a, b ;
input su;
output reg [7:0] alu_out ;


always @(*)
begin
    if (su) alu_out = a - b ;
	 else alu_out = a + b ;
end 

endmodule 