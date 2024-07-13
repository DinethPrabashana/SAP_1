module Microprocessor_tb;

reg RESET , CLOCK, PROG_RUN ;
reg [7:0] DATA_INPUT ;
reg [3:0] WRITE_ADDR ;
wire [7:0] OUTPUT_DATA ;

Microprocessor  mcu_1( RESET, CLOCK, PROG_RUN, DATA_INPUT, WRITE_ADDR, OUTPUT_DATA);

always 
begin 
    #5 CLOCK = ~CLOCK ;
end 

initial 
begin 
    CLOCK = 0 ; PROG_RUN = 1 ;  
    #2 WRITE_ADDR = 4'h0 ; DATA_INPUT = 8'h09 ;
    #10 WRITE_ADDR = 4'h1; DATA_INPUT = 8'h1a ;
    #10 WRITE_ADDR = 4'h2; DATA_INPUT = 8'h1b ;
    #10 WRITE_ADDR = 4'h3; DATA_INPUT = 8'h2c ;
    #10 WRITE_ADDR = 4'h4; DATA_INPUT = 8'hef ;
    #10 WRITE_ADDR = 4'h5; DATA_INPUT = 8'hff ;
    #10 WRITE_ADDR = 4'h6; DATA_INPUT = 8'hff ;
    #10 WRITE_ADDR = 4'h7; DATA_INPUT = 8'hff ;
    #10 WRITE_ADDR = 4'h8; DATA_INPUT = 8'hff ;
    #10 WRITE_ADDR = 4'h9; DATA_INPUT = 8'h01 ;
    #10 WRITE_ADDR = 4'ha; DATA_INPUT = 8'h02 ;
    #10 WRITE_ADDR = 4'hb; DATA_INPUT = 8'h03 ;
    #10 WRITE_ADDR = 4'hc; DATA_INPUT = 8'h04 ;
    #10 WRITE_ADDR = 4'hd; DATA_INPUT = 8'hff ;
    #10 WRITE_ADDR = 4'he; DATA_INPUT = 8'hff ;
    #10 WRITE_ADDR = 4'hf; DATA_INPUT = 8'hff ;

    #10 PROG_RUN = 0 ; 
    #20 RESET = 0 ;
    #10 RESET = 1 ;
    #1000 $finish ;

end 

endmodule 
