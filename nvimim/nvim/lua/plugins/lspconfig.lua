return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.ts_ls.setup({})
		lspconfig.cssls.setup({})
		lspconfig.tailwindcss.setup({})
	end,
}
