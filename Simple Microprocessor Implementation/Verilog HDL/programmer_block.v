module programmer_block(prog_or_run, clk, universe_CLK, write_clk);

input prog_or_run, clk;
output universe_CLK, write_clk ;


assign write_clk = prog_or_run & clk ;
assign universe_CLK = (~prog_or_run) & clk ;


endmodule 