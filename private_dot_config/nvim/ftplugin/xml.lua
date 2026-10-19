-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Override of lua/config/options.lua for XML
vim.g.autoformat = false
local opt = vim.opt

opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 2 -- Size of an indent
opt.softtabstop = 2 -- Number of spaces that a <Tab> counts for while performing editing operations
opt.expandtab = true -- True means <Tab> is expanded into multiple spaces
