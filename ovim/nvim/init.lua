vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt_local.conceallevel = 2

require("config.lazy")
require("keymaps.keymaps")

-- Follow Obsidian-style [[links]] in Neovim
vim.keymap.set("n", "<CR>", function()
  local row = vim.api.nvim_win_get_cursor(0)[1]
  local line = vim.api.nvim_buf_get_lines(0, row-1, row, false)[1]

  -- Find the link under cursor
  local col = vim.api.nvim_win_get_cursor(0)[2] + 1
  local start_pos, end_pos, link = line:find("%[%[([^%]]-)%]%]")

  print("trying link:", link)
  if link then
    -- Replace spaces with hyphens if you use Obsidian-style filenames
    local filename = link
    local path = vim.fn.expand("~/Obsidian/Knowledge Base/" .. filename .. ".md") -- change to your vault

    if vim.fn.filereadable(path) == 1 then
      vim.cmd("edit " .. path)
    else
      print("File does not exist: " .. path)
      -- Auto-create file if it doesn't exist
      vim.cmd("edit " .. path)
      vim.fn.writefile({}, path)
      print("Created new note: " .. path)
    end
  else
    print("No [[link]] under cursor")
  end
end, { noremap = true, silent = true })
