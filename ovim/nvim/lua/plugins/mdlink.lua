return { 
  'Nedra1998/nvim-mdlink',
  config = function()
    require('nvim-mdlink').setup({
      keymap = false,
      cmp = true
    })
  end
}
