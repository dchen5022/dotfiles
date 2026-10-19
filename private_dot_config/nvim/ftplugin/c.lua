-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Override of lua/config/options.lua for C (Linux kernel)
vim.g.autoformat = false
local opt = vim.opt

opt.tabstop = 8 -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 8 -- Size of an indent
opt.softtabstop = 8 -- Number of spaces that a <Tab> counts for while performing editing operations
opt.expandtab = false -- True means <Tab> is expanded into multiple spaces
