require'config.lazy'

-- require'mason-lspconfig'.setup({
--     ensure_installed = {
--     }
-- })

vim.cmd[[TransparentEnable]]

require'config.option'
require'config.keymaps'

--
require'plugins.diagnostics'
-- load lspconfigs
require'plugins.lspconfig.lspconfig-jdtls'
require'plugins.lspconfig.lspconfig-clangd'
require'plugins.lspconfig.lspconfig-lua-language-server'
require'plugins.lspconfig.lspconfig-zls'
require'plugins.lspconfig.lspconfig-groovy-language-server'
require'plugins.lspconfig.typescript-language-server'
require'plugins.lspconfig.go'
require'plugins.lspconfig.css-lsp'
require'plugins.lspconfig.html-lsp'


