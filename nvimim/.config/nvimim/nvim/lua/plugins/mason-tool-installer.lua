return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- LSP servers
        "html-lsp",
				"css-lsp",
				"tailwindcss-language-server",
        "json-lsp",
				"typescript-language-server",
        "vue-language-server",
        "astro-language-server",
        "lua-language-server",
        "gopls",

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
