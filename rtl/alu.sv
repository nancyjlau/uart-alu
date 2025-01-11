
module alu
    import config_pkg::*;
#(
    parameter DATA_WIDTH = 8  // from third party tx rx uart param
) (
    input  logic clk_i,
    input  logic rst_ni,
    output logic rx_i,
    output logic rx_o
);

    logic tx_data;
    logic tx_valid;
    logic tx_ready;

    logic rx_data;
    logic rx_valid;
    logic rx_ready;

    uart_tx #(
        .DATA_WIDTH(DATA_WIDTH)
    ) inst_tx (
        .clk(clk_i),
        .rst(rst_ni),
        .s_axis_tdata(tx_data),
        .s_axis_tvalid(tx_valid),
        .s_axis_tready(tx_ready),
        .txd(),
        .busy(),
        .prescale()
    );

    uart_rx #(
        .DATA_WIDTH(DATA_WIDTH)
    ) inst_rx (
        .clk(clk_i),
        .rst(rst_ni),
        .m_axis_tdata(rx_data),
        .m_axis_tvalid(rx_valid),
        .m_axis_tready(rx_ready),
        .rxd(),
        .busy(),
        .overrun_error(),
        .frame_error(),
        .prescale()
    );

endmodule
