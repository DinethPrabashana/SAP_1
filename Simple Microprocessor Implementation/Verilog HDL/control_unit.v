module control_unit(opcode, reset, clk ,control_signal);
input [3:0] opcode ;
input clk , reset ;
output reg [11:0] control_signal ;

reg [2:0] state ; //maximum of 6 states possible 

always @(negedge clk or negedge reset)
begin 
    if (~reset)  state <= 0 ;
    else 
    begin 
		  if (state == 6) state <= 3'b000 ;
        else state <= state + 3'b001 ;	
	 end
end 



always @(*)
begin 
    case(state)
    // fetch cycle
    3'b000: control_signal <= 12'h5e3 ;
    3'b001: control_signal <= 12'hbe3 ;
    3'b010: control_signal <= 12'h263 ;
        
    3'b011: 
    begin 
        case (opcode)
        4'b0000: control_signal <= 12'h1a3 ;
        4'b0001: control_signal <= 12'h1a3 ;
        4'b0010: control_signal <= 12'h1a3 ;
        4'b1110: control_signal <= 12'h3f2 ;
        default: control_signal <= 12'h3e3 ; // do nothing
        endcase
    end
    3'b100: 
    begin
        case (opcode)
        4'b0000: control_signal <= 12'h2c3 ;
        4'b0001: control_signal <= 12'h2e1 ;
        4'b0010: control_signal <= 12'h2e1 ;
        4'b1110: control_signal <= 12'h3e3 ;
        default: control_signal <= 12'h3e3 ; // do nothing
        endcase 
    end
    3'b101: 
    begin 
        case (opcode)
        4'b0000: control_signal <= 12'h3e3 ;
        4'b0001: control_signal <= 12'h3c7 ;
        4'b0010: control_signal <= 12'h3cf ;
        4'b1110: control_signal <= 12'h3e3 ;
        default: control_signal <= 12'h3e3 ; // do nothing
        endcase
    end
	 default: control_signal <= 12'h3e3 ;
    endcase
end 

endmodule 