module xnor_nand_only(a, b, F);
  input a, b;
  output F;
  wire w1, w2, w3;

  nand #5 (w1, a, b);
  nand #5 (w2, a, w1);
  nand #5 (w3, b, w1);
  and(F, w2, w3);
endmodule