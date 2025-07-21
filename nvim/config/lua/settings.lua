-- General settings for nvim config

vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.smartcase = true

-- Python indent settings

vim.g.python_indent = {
    open_paren = vim.fn.shiftwidth(),
    nested_paren = vim.fn.shiftwidth(),
    continue = vim.fn.shiftwidth(),
    closed_paren_align_last_line = false,
}
