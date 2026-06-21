local vim = vim

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require('plugins.plug')
vim.cmd[[colorscheme oxocarbon]]
require('plugin-config')
require('config.option')
require('config.keymaps')
require('plugins.diagnostics')
require('lsp-config')

