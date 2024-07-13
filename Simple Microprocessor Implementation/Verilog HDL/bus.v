module bus(control_sig, PC_IN, RAM_IN, IR_IN, ACC_IN, ALU_IN, MAR_OUT, IR_OUT, OPR_OUT, REG_B_OUT, ACC_OUT);

input [3:0] PC_IN, IR_IN ;
input [7:0] RAM_IN, ALU_IN, ACC_IN ;
input [11:0] control_sig ;
output [3:0] MAR_OUT ;
output [7:0] IR_OUT, OPR_OUT, REG_B_OUT, ACC_OUT ;

reg [7:0] w_bus ;

assign IR_OUT = w_bus ;
assign MAR_OUT = w_bus[3:0] ;
assign OPR_OUT = w_bus ;
assign REG_B_OUT = w_bus ;
assign ACC_OUT = w_bus ;

always @(*)
begin 
    case(control_sig)
    12'h5e3:
    begin  
       w_bus[3:0] = PC_IN ;
       w_bus[7:4] = 4'b0000; 
    end
    12'h263: w_bus = RAM_IN ;
    12'h1a3: 
	 begin
		w_bus[3:0] = IR_IN ;
		w_bus[7:4] = 4'b0000 ;
	 end
    12'h2c3: w_bus = RAM_IN ;
    12'h2e1: w_bus = RAM_IN ;
    12'h3c7: w_bus = ALU_IN ;
    12'h3cf: w_bus = ALU_IN ;
    12'h3f2: w_bus = ACC_IN ;
    default: w_bus = 8'd0 ;
    endcase 
end
endmodule 