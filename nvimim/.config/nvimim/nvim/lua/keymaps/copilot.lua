local opts = { replace_keycodes = false, expr = true, silent = true, noremap = true }
local map = vim.keymap.set

map("i", "<C-L>", 'copilot#Accept("<CR>")', opts)
