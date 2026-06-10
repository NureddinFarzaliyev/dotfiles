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
    "*.go",
    "*.astro",
    "*.java",
    "*.xml",
	},
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
