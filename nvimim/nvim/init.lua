vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.fillchars:append({ eob = " " }) -- Remove end of buffer message (~)

require("config.lazy")
require("config.autocmds")
require("keymaps.keymaps")
