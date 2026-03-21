local vim = vim

vim.cmd("")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require('plugins.plug')
require('plugin-config')
require('config.option')
require('config.keymaps')
require('plugins.diagnostics')
require('lsp-config')

vim.cmd("colorscheme silentium")
