local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- save file
map("n", "<C-s>", "<cmd>w!<cr>", opts)
map("i", "<C-s>", "<esc><cmd>w!<cr>a", opts)

-- return normal mode from terminal
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Go to normal mode from terminal" })

-- open diagnostics
map("n", "<leader>f", vim.diagnostic.open_float, { desc = "Open diagnostics" })

vim.keymap.set('n', '<leader>o', function()
  local line = vim.api.nvim_get_current_line()
  local cursor = vim.api.nvim_win_get_cursor(0)[2] + 1
  local link = line:sub(cursor):match("%[%[(.-)%]%]")
  if link then
    local file = vim.fn.expand("~/Obsidian/Knowledge Base/" .. link) -- adjust folder
    if vim.fn.filereadable(file) == 1 then
      vim.cmd("edit " .. file)
    else
      print("File not found: " .. file)
    end
  end
end, { noremap = true, silent = true })
