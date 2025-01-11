
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

    // module uart_rx #
    // (
    //     parameter DATA_WIDTH = 8
    // )
    // (
    //     input  wire                   clk,
    //     input  wire                   rst,

    //     /*
    //      * AXI output
    //      */
    //     output wire [DATA_WIDTH-1:0]  m_axis_tdata,
    //     output wire                   m_axis_tvalid,
    //     input  wire                   m_axis_tready,

    //     /*
    //      * UART interface
    //      */
    //     input  wire                   rxd,

    //     /*
    //      * Status
    //      */
    //     output wire                   busy,
    //     output wire                   overrun_error,
    //     output wire                   frame_error,

    //     /*
    //      * Configuration
    //      */
    //     input  wire [15:0]            prescale

    // );

endmodule
