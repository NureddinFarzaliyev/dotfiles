local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Close current buffer
-- Go to previous buffer when current one is closed
map("n", "<leader>c", function()
	local current_buffer = vim.api.nvim_get_current_buf()
	vim.cmd("bprev")
	vim.cmd("bdelete " .. current_buffer)
end, opts)

-- Go to buffer 1 - 9
for i = 1, 9 do
	map("n", "<leader>" .. i, "<cmd>BufferLineGoToBuffer " .. i .. "<CR>", opts)
end
