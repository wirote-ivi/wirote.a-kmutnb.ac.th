module LED4Blink(

    input  logic clk,
    output logic [3:0] led

);

logic [25:0] counter;

always_ff @(posedge clk)
begin
    counter <= counter + 1;
end

assign led = counter[25:22];

endmodule