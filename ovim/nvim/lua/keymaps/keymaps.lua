local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- save file
map("n", "<C-s>", "<cmd>w!<cr>", opts)
map("i", "<C-s>", "<esc><cmd>w!<cr>a", opts)

-- return normal mode from terminal
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Go to normal mode from terminal" })

-- open diagnostics
map("n", "<leader>f", vim.diagnostic.open_float, { desc = "Open diagnostics" })

-- Follow Obsidian-style [[links]] in Neovim
vim.keymap.set("n", "<CR>", function()
  print("FOLLOWING LINK...")
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
