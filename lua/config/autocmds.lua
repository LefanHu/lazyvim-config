-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Java: match the ECE351 skeleton style (tabs) and don't reformat on save
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.b.autoformat = false -- no format-on-save for Java
    vim.bo.expandtab = false -- indent with real tabs
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})
