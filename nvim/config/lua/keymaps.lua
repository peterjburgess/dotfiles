-- General global keymaps

-- Maps for getting back to normal mode
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "<leader>jk", "<ESC>")

-- Maps for sourcing lines or files for config
vim.keymap.set("n", "<leader><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- Allow for easier navigation around splits
vim.keymap.set("n", "<leader>h", "<c-w>h")
vim.keymap.set("n", "<leader>j", "<c-w>j")
vim.keymap.set("n", "<leader>k", "<c-w>k")
vim.keymap.set("n", "<leader>l", "<c-w>l")

-- Easily remove highlighting
vim.keymap.set("n", "<leader>n", ":nohlsearch<CR>")

-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Terminal keymaps

-- Keymap for (s)mall (t)erminal at the bottom of the screen
-- Lookup vim.fn.chansend for sending commands to the terminal
vim.keymap.set("n", "<leader>st", function()
  -- Create a new window
  vim.cmd.new()
  -- Open terminal in new window
  vim.cmd.term()
  -- Send terminal to the very bottom
  vim.cmd.wincmd("J")
  -- Set terminal window height to 10 lines
  vim.api.nvim_win_set_height(0, 10)
end)

-- Get to normal mode in the terminal by double hitting esc
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
