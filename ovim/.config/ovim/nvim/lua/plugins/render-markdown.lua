-- @markup.raw.markdown_inline xxx guifg=#82aaff guibg=#444a73 
-- change this to
-- @markup.raw.markdown_inline xxx guifg=#A9B1D6 guibg=#090B10

return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function() 
    require('render-markdown').setup({
      quote = { repeat_linebreak = true },
    })
  end
}
