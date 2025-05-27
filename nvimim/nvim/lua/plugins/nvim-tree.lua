return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	config = function()
		require("nvim-tree").setup()
		require("keymaps.nvim-tree")
	end,
}
