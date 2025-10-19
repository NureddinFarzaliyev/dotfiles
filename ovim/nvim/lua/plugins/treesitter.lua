return {
  "nvim-treesitter/nvim-treesitter", 
  branch = 'master', 
  lazy = false, 
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "javascript", "lua", "python", "vue", "html", "css", "bash" },
        highlight = {
          enable = true,
        },
    })
  end,
}
