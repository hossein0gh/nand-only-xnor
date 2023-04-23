module testbench;
// Inputs
reg a0, a1, a2, a3, b0, b1, b2, b3;
// Outputs
wire G, L, E;

// Instantiate the four_bit_comp module
four_bit_comp uut(G, L, E, a0, a1, a2, a3, b0, b1, b2, b3);

initial begin
    // Test case 1
    a3 = 1; a2 = 0; a1 = 1; a0 = 0;
    b3 = 0; b2 = 1; b1 = 0; b0 = 1;
    #10;

    // Test case 2
    a3 = 1; a2 = 1; a1 = 1; a0 = 1;
    b3 = 0; b2 = 0; b1 = 0; b0 = 0;
    #10;

    // Test case 3
    a3 = 0; a2 = 0; a1 = 0; a0 = 0;
    b3 = 1; b2 = 1; b1 = 1; b0 = 1;
    #10;

    // Test case 4
    a3 = 1; a2 = 0; a1 = 1; a0 = 0;
    b3 = 1; b2 = 0; b1 = 1; b0 = 0;
    #10;

    // Test case 5
    a3 = 0; a2 = 1; a1 = 0; a0 = 1;
    b3 = 0; b2 = 1; b1 = 0; b0 = 1;
    #10;

    // Test case 6
    a3 = 1; a2 = 1; a1 = 0; a0 = 0;
    b3 = 1; b2 = 1; b1 = 0; b0 = 0;
    #10;
    $stop;
   end
endmodule