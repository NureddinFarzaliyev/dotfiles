return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local vue_ls_path = vim.fn.expand("$MASON/packages/vue-language-server/node_modules/@vue/language-server/node_modules")

		vim.lsp.config("ts_ls", {
			capabilities = capabilities,
			init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_ls_path,
            languages = { "vue" },
          }
        },
				preferences = {
					importModuleSpecifierPreference = "non-relative",
					importModuleSpecifierEnding = "auto",
				},
			},
      filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue" },
		})
		vim.lsp.config("cssls", {
			capabilities = capabilities,
		})
		vim.lsp.config("tailwindcss", {
			capabilities = capabilities,
		})
	end,
}
