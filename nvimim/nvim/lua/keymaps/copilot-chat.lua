local smart_splits = require("smart-splits")
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

function OpenCopilotChatOnRight()
	vim.cmd("vsplit")
	smart_splits.move_cursor_right()
	vim.cmd("CopilotChat")
end

function OpenCopilotChatOnRightmost()
	while smart_splits.move_cursor_right() do
	end
	vim.cmd("vsplit")
	smart_splits.move_cursor_right()
	vim.cmd("CopilotChat")
end

map("n", "<leader>a", OpenCopilotChatOnRightmost, opts)
