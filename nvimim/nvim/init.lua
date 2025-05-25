vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.fillchars:append({ eob = " " }) -- Remove end of buffer message (~)

vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

require("config.lazy")
require("config.autocmds")
require("keymaps.keymaps")

vim.cmd([[colorscheme nekonight-deep-ocean]])
