-- options

vim.cmd [[
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none
set mouse=
]]

--- basics
vim.opt.clipboard = "unnamedplus"
vim.o.number = true -- Enable lne numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.tabstop = 4 -- Number ,of spaces a tab represents
vim.o.shiftwidth = 4 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Automatically indent new lines
vim.o.wrap = false -- Disable line wrapping
vim.o.cursorline = true -- Highlight the current line
vim.o.termguicolors = true -- Enable 24-bit RGB colors
vim.o.scrolloff = 10
vim.opt.mouse=nil

-- Source - https://stackoverflow.com/a
-- Posted by trash bin, modified by community. See post 'Timeline' for change history
-- Retrieved 2025-11-08, License - CC BY-SA 4.0

-- vim.opt.guicursor = "n-c:hor20,i-ci:ver25"

