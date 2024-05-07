// Definition of the 'mux_2to1' module with an AND gate
module mux_2to1(a,b,sel,y)
input a,b,sel;
output y;
    assign y = sel ? b : a;
endmodule

// Testbench for the 'mux_2to1' module
module test_mux;
    reg a, b, sel;
    wire y;

    // Instantiate the 'mux_2to1' module
    mux_2to1 my_mux (.a(a), .b(b), .sel(sel), .y(y));

    initial begin
        a = 1; b = 0; sel = 0; #10;
        a = 0; b = 1; sel = 1; #10;
    end
endmodule

