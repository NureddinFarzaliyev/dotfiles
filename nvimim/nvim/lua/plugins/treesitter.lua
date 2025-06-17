return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "markdown",
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    })
  end,
}
