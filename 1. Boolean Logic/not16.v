// not gate for 16-bit wide input
module m_not16 #(parameter N = 16)
  (
  input [N-1:0] i_a,
  output [N-1:0] o_out
  );
  
genvar i;
generate
  for (i = 0; i < N; i = i + 1)
  begin
    m_not N_not_insts (
      .i_a(i_a[i]),
      .o_out(o_out[i])
      );
  end
endgenerate 

endmodule
