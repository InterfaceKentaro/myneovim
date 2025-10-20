require'config.lazy'

vim.cmd[[TransparentEnable]]

require'config.option'
require'config.keymaps'

vim.cmd[[colorscheme cyberdream]]
-- require'conifer'.setup({});

require'plugins.diagnostics'
require'plugins.lspconfig.lspconfig-jdtls'
require'plugins.lspconfig.lspconfig-clangd'
require'plugins.lspconfig.lspconfig-lua-language-server'
require'plugins.lspconfig.lspconfig-zls'
require'plugins.lspconfig.lspconfig-groovy-language-server'
require'plugins.lspconfig.lspconfig-deno'





























