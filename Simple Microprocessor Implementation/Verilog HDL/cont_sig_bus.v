module cont_sig_bus( CONT_SIGNAL , LM_BAR , LL_BAR, LO_BAR, LB_BAR, LA_BAR,CP, SU);

input [11:0] CONT_SIGNAL ;
output LM_BAR, LL_BAR, LO_BAR, LB_BAR, LA_BAR,CP, SU ;

assign LM_BAR = CONT_SIGNAL[9] ;
assign LL_BAR = CONT_SIGNAL[7] ;
assign LO_BAR = CONT_SIGNAL[0] ;
assign LB_BAR = CONT_SIGNAL[1] ;
assign LA_BAR = CONT_SIGNAL[5] ;
assign CP = CONT_SIGNAL[11] ;
assign SU = CONT_SIGNAL[3] ;

endmodule