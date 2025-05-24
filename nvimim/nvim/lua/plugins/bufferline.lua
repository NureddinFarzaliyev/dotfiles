return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						highlight = "Normal",
					},
				},
			},
		})
		vim.opt.termguicolors = true
		require("keymaps.bufferline")
	end,
}
