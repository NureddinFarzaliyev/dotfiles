return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("keymaps.telescope")
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
          horizontal = {
            mirror = false,
            preview_width = 0.6,
          },
          vertical = {
            mirror = false,
          },
          width = 0.7,
          height = 0.8,
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    })
  end,
}
