module counter(
    input clk,
    input reset,
    output reg [3:0] count
);

    always @(posedge clk) begin
        // Synchronously reset the counter to 0 on the next clock edge
        if (reset) begin
            count <= 4'b0000;
        end else begin
            // Increment the counter unless reset is asserted
            count <= count + 1'b1;
        end
    end

endmodule
