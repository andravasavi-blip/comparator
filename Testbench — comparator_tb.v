`timescale 1ns/1ps

module comparator_tb;

reg [3:0] A;
reg [3:0] B;

wire A_greater_B;
wire A_equal_B;
wire A_less_B;

comparator uut (
    .A(A),
    .B(B),
    .A_greater_B(A_greater_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
);

initial begin

    $display("Time\tA\tB\tA>B\tA=B\tA<B");

    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
             $time, A, B,
             A_greater_B,
             A_equal_B,
             A_less_B);

    // A > B
    A = 4'b1001;
    B = 4'b0101;
    #10;

    // A = B
    A = 4'b0110;
    B = 4'b0110;
    #10;

    // A < B
    A = 4'b0011;
    B = 4'b1000;
    #10;

    // A > B
    A = 4'b1111;
    B = 4'b1010;
    #10;

    // A < B
    A = 4'b0010;
    B = 4'b0111;
    #10;

    $finish;

end

endmodule