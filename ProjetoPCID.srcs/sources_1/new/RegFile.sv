module RegFile(
    input logic [15:0] W_data,
    input logic [3:0] W_addr,
    input logic W_wr,
    input logic [3:0] Rp_addr,
    input logic Rp_rd,
    input logic [3:0] Rq_addr,
    input logic Rq_rd,
    input logic clk,
    output logic [15:0] Rp_data,
    output logic [15:0] Rq_data
    );

    logic [15:0] RAM [15:0];

      always @(posedge clk)
      if (W_wr) RAM[W_addr] <= W_data;
      else if (Rp_rd) Rp_data <= RAM[Rp_addr];
      else if (Rq_rd) Rq_data <= RAM[Rq_addr];
endmodule