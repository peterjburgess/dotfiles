require("config.lazy")
require("settings")
require("keymaps")

vim.g.mapleader = " "

-- Use Powershell as the default shell for Windows
if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.o.shell = 'powershell'
    vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
    vim.o.shellquote = ""
    vim.o.shellxquote = ""
end
