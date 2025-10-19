-- Autocommand to set custom highlight for inline code in markdown files
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "@markup.raw.markdown_inline", { fg = "#A9B1D6", bg = "#090B10" })
    vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { fg = "#A9B1D6", bg = "#090B10" })
  end,
})
