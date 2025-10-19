vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = {
		"*.js",
		"*.ts",
		"*.jsx",
		"*.tsx",
		"*.json",
		"*.css",
		"*.scss",
		"*.html",
		"*.md",
    "*.vue",
    "*.lua",
	},
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
