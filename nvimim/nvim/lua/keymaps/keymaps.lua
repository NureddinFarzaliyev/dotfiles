local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- save file
map("n", "<C-s>", "<cmd>w!<cr>", opts)
map("i", "<C-s>", "<esc><cmd>w!<cr>a", opts)
