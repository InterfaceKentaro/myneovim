local vim = vim
require('plugins.plug')

vim.cmd("")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require('plugin-config')
require('config.option')
require('config.keymaps')
require('plugins.diagnostics')
require('lsp-config')

vim.cmd("colorscheme silentium")
