return {
  "github/copilot.vim",
  event = "InsertEnter",
  lazy = false,
  autoStart = true,
  config = function()
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_no_tab_map = true
    require("keymaps.copilot")
  end,
}
