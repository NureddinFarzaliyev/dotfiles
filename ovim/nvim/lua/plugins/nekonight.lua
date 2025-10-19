return {
	"neko-night/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nekonight").setup({})
	end,
}
