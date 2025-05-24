return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
	config = function()
		require("nvim-tree").setup()
		require("keymaps.nvim-tree")
	end,
}
