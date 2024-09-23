-- init.lua for Peter Burgess. Contact petebur@gmail.com
--
-- Global Settings
--
-- Basic Settings
-- Set leader and local leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Set searches to be case insensitive by default
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Display line numbers
vim.opt.number = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 5

-- Show which line the cursor is on
-- vim.opt.cursorline = true

-- Easily turn off highlighting
vim.keymap.set('n', '<leader>n', '<cmd>nohl<cr>', {desc = 'Turn off search result highlight'})

-- Navigation remappings
vim.keymap.set('i', 'jk', '<esc>', {desc = 'Map jk to leave insert mode'})
vim.keymap.set('v', '<leader>jk', '<esc>', {desc = 'Map leader jk to leave insert mode'})

-- Allow for easier navigation around splits
vim.keymap.set('n', '<leader>h', '<c-w>h', {desc = 'Go left one window with leader h'})
vim.keymap.set('n', '<leader>j', '<c-w>j', {desc = 'Go down one window with leader j'})
vim.keymap.set('n', '<leader>k', '<c-w>k', {desc = 'Go up one window with leader k'})
vim.keymap.set('n', '<leader>l', '<c-w>l', {desc = 'Go right one window with leader l'})

-- Open vertical splits on the right
vim.opt.splitright = true

-- Easily open file explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- More easily go left or right in insert mode
vim.keymap.set('i', '<c-l>', '<right>')
vim.keymap.set('i', '<c-h>', '<left>')

-- Set default indentation to 2 spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop=2
vim.opt.shiftround = true

-- Text mappings
-- Put quotes around current word in normal mode
vim.keymap.set('n', '<leader>"', 'lBi"<esc>Ea"<esc>')
vim.keymap.set('n', "<leader>'", "lBi'<esc>Ea'<esc>")
vim.keymap.set('n', '<leader>`', 'lBi`<esc>Ea`<esc>')

-- Put quotes around selection in visual mode
vim.keymap.set('v', '<leader>"', '<esc>`>a"<esc>`<i"<esc>vf"')
vim.keymap.set('v', "<leader>'", "<esc>`>a'<esc>`<i'<esc>vf'")

-- Create a new empty line then immediately return to normal mode
vim.keymap.set('n', '<leader>o', 'o<esc>')
vim.keymap.set('n', '<leader>O', 'O<esc>')

-- Movement mappings
-- Allow movements to apply in and around parentheses, curly braces and square brackets
vim.keymap.set('o', 'in(', '<cmd>normal! f(vi(<cr>')
vim.keymap.set('o', 'il(', '<cmd>normal! F)vi(<cr>')
vim.keymap.set('o', 'an(', '<cmd>normal! f(va(<cr>')
vim.keymap.set('o', 'al(', '<cmd>normal! F)va(<cr>')

vim.keymap.set('o', 'in[', '<cmd>normal! f[vi[<cr>')
vim.keymap.set('o', 'il[', '<cmd>normal! F]vi[<cr>')
vim.keymap.set('o', 'an[', '<cmd>normal! f[va[<cr>')
vim.keymap.set('o', 'al[', '<cmd>normal! F]va[<cr>')

vim.keymap.set('o', 'in{', '<cmd>normal! f{vi{<cr>')
vim.keymap.set('o', 'il{', '<cmd>normal! F}vi{<cr>')
vim.keymap.set('o', 'an{', '<cmd>normal! f{va{<cr>')
vim.keymap.set('o', 'al{', '<cmd>normal! F}va{<cr>')

-- Misc mappings
-- Allow easily opening init.lua file from any nvim session and reset the source
vim.keymap.set('n', '<leader>ev', '<cmd>exe "vsplit ".stdpath("config")."/init.lua"<cr>')
vim.keymap.set('n', '<leader>hev', '<cmd>exe "split ".stdpath("config")."/init.lua"<cr>')
vim.keymap.set('n', '<leader>sv', '<cmd>exe "source ".stdpath("config")."/init.lua"<cr>')

-- Common abbreviations and useful shortcuts

vim.cmd([[
  :iabbrev adn and
  :iabbrev waht what
  :iabbrev tehn then
  :iabbrev teh the
  :iabbrev Teh The
  :iabbrev @@1 petebur@gmail.com
  :iabbrev ipd import pandas as pd
  :iabbrev inp import numpy as np
]])

-- Set the colorscheme

vim.cmd('colorscheme halfdark')

-- Python autocommands
local pycmd = vim.api.nvim_create_augroup('python', { clear = false })
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.keymap.set('n', '<F5>', ':!python %<CR>')
  end,
  desc = 'Allow the current Python file to be run with F5',
  group = pycmd
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.treesitter.start()
  end,
  group = pycmd,
  desc = 'Start Treesitter when opening a Python file'
})
-- Enable treesitter for syntax highlighting
-- vim.treesitter.start()

-- Load plugins
-- require('config.lazy')
