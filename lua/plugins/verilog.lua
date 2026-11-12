-- Verilog / SystemVerilog support (ECE320 PDs)
-- * treesitter: the `systemverilog` parser also handles `verilog` buffers
-- * LSP: verible-verilog-ls (syntax errors + lint); --rules_config_search makes
--   it pick up a `.rules.verible_lint` file from the project's parent dirs
-- * formatting: verible-verilog-format with 4-space indents, forced column
--   alignment of assignments, port declarations and net/variable declarations
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "systemverilog" } },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "verible" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        verible = {
          cmd = { "verible-verilog-ls", "--rules_config_search" },
          -- verible both pushes diagnostics and answers pull requests, so nvim
          -- shows every warning twice; keep only the push ones
          on_init = function(client)
            client.server_capabilities.diagnosticProvider = nil
          end,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        verilog = { "verible" },
        systemverilog = { "verible" },
      },
      formatters = {
        verible = {
          prepend_args = {
            "--indentation_spaces=4",
            -- always align (default "infer" only aligns if the input already looks aligned)
            "--assignment_statement_alignment=align", -- `<=` / `=` in a block
            "--port_declarations_alignment=align", -- input/output wire/reg [w] name
            "--module_net_variable_alignment=align", -- wire/reg declarations in module body
          },
        },
      },
    },
  },
}
