local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- save file
map("n", "<C-s>", "<cmd>w!<cr>", opts)
map("i", "<C-s>", "<esc><cmd>w!<cr>a", opts)

-- return normal mode from terminal
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Go to normal mode from terminal" })

-- open diagnostics
map("n", "<leader>f", vim.diagnostic.open_float, { desc = "Open diagnostics" })
