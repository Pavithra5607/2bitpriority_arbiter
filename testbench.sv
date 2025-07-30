
module tb_priority_arbiter_2bit;

    reg  [1:0] req;
    wire [1:0] grant;

    priority_arbiter_2bit uut (
        .req(req),
        .grant(grant)
    );

  initial begin
    $dumpfile("priority_arbiiter_2bit.vcd");
    $dumpvars;
        $display("Time\treq\tgrant");
        $monitor("%0t\t%b\t%b", $time, req, grant);

        req = 2'b00; #10; 
        req = 2'b01; #10;  
        req = 2'b10; #10;  
        req = 2'b11; #10;  

        $finish;
    end
endmodule