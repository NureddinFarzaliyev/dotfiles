vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt_local.conceallevel = 2

vim.opt.number = true
vim.opt.clipboard = "unnamedplus"

require("config.lazy")
require("keymaps.keymaps")
require("config.autocmds")

vim.cmd([[colorscheme nekonight-deep-ocean]])
