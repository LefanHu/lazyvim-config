return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- ruff_format alone does not sort imports (I001); run organize-imports first
        python = { "ruff_organize_imports", "ruff_format" },
      },
    },
  },
}
