module updown_counter(
    input clk,
    input reset,
    input up_down,
    output reg [3:0] count
);

reg [24:0] div_count;
reg slow_clk;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        div_count <= 0;
        slow_clk <= 0;
    end
    else if(div_count == 24999999)
    begin
        div_count <= 0;
        slow_clk <= ~slow_clk;
    end
    else
        div_count <= div_count + 1;
end

always @(posedge slow_clk or posedge reset)
begin
    if(reset)
        count <= 0;
    else if(up_down)
        count <= count + 1;
    else
        count <= count - 1;
end

endmodule