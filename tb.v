module tb_full_subtractor;

    reg A;
    reg B;
    reg Bin;

    wire D;
    wire Bout;


    full_subtractor FS(
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );

    initial begin

        $display("A B Bin | D Bout");
        $display("----------------");
        $dumpfile("dump.vcd");
        $dumpvars(0,tb_full_subtractor);

        A=0; B=0; Bin=0; 
        #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        A=0; B=0; Bin=1; 
        #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        A=0; B=1; Bin=0; 
        #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        A=0; B=1; Bin=1; 
        #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        A=1; B=0; Bin=0;
         #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        A=1; B=0; Bin=1; 
        #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        A=1; B=1; Bin=0; 
        #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        A=1; B=1; Bin=1; 
        #10;
        $display("%b %b  %b  | %b   %b", A,B,Bin,D,Bout);

        $finish;

    end

endmodule