return {
	"mrjones2014/smart-splits.nvim",
	config = function()
		require("smart-splits").setup({})
		require("keymaps.smart-splits")
	end,
}
