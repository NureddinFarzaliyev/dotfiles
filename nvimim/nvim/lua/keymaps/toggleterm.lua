local map = vim.keymap.set

map({ "n", "t" }, "<leader>tf", function()
	require("toggleterm.terminal").Terminal:new({ direction = "float" }):toggle()
end)

map({ "n", "t" }, "<leader>th", function()
	require("toggleterm.terminal").Terminal:new({ direction = "horizontal" }):toggle()
end)

map({ "n", "t" }, "<leader>tv", function()
	require("toggleterm.terminal").Terminal:new({ direction = "vertical" }):toggle()
end)
