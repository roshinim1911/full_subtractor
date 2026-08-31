module half_sub(input A,input B,output D,output Bout);
xor g1 (D,A,B);
and g2 (bout,~A,B);
endmodule
module full_subtractor(input A,input B,input Bin,output D,output Bout);
    wire D1;
    wire B1;
    wire B2;

    half_sub HS1(
        .A(A),
        .B(B),
        .D(D1),
        .Bout(B1)
    );

    half_sub HS2(
        .A(D1),
        .B(Bin),
        .D(D),
        .Bout(B2)
    );

   
    or (Bout, B1, B2);

endmodule