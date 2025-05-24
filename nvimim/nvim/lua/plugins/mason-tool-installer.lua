return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- LSP servers
				"typescript-language-server",
				"css-lsp",
				"tailwindcss-language-server",

				-- Formatters
				"prettierd",

				-- Linters
				"eslint_d",
			},
			auto_update = false,
			run_on_start = true,
		})
	end,
}
