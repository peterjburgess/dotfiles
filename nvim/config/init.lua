require("config.lazy")

vim.g.mapleader = " "

vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

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

-- Use Powershell as the default shell for Windows
if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.o.shell = 'powershell'
    vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
    vim.o.shellquote = ""
    vim.o.shellxquote = ""
end
