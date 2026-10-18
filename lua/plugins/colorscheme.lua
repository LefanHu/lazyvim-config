-- Transparent background so the iTerm background shows through
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent", -- file explorer, help, terminal, etc.
        floats = "transparent", -- floating windows (pickers, hover docs)
      },
    },
  },
}
