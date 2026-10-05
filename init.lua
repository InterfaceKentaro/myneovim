local vim = vim

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require('plug')
vim.cmd[[colorscheme oxocarbon]]
require('diagnostics')
require('plugin-config')
require('config.option')
require('config.keymaps')
require('lsp-config')
