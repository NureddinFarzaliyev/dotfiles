return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.ts_ls.setup({
			capabilities = capabilities,
			init_options = {
				preferences = {
					importModuleSpecifierPreference = "non-relative",
					importModuleSpecifierEnding = "auto",
				},
			},
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
		lspconfig.tailwindcss.setup({
			capabilities = capabilities,
		})
	end,
}
