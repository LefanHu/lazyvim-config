-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false -- no format-on-save by default (<leader>uF toggles it, <leader>cf formats manually)
vim.g.ai_cmp = false -- show Copilot as inline ghost text (accept with <Tab>) instead of in the completion menu

vim.opt.shiftwidth = 4 -- size of an indent
vim.opt.tabstop = 4 -- number of spaces a <Tab> counts for
vim.opt.softtabstop = 4
