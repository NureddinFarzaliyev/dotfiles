return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 50,
			shade_terminals = true,
			start_in_insert = true,
		})
		require("keymaps.toggleterm")
	end,
}
