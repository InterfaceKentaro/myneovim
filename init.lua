-- require'config.lazy'
vim.cmd("")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require'plugins.plug'
vim.cmd("colorscheme cyberdream")

require"lualine".setup({
    options = {
        section_separators = '',
        component_separators = ''
    }
})

require'cyberdream'.setup({
    options = {
        theme = "auto"
    },
})

require'lua.config.option'
require'lua.config.keymaps'
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

require('telescope').setup({})
local luasnip = require('luasnip')
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
    },

    mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(), -- 補完メニュー表示
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 選択された項目を確定

            ["<Tab>"] = cmp.mapping(
                function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end

                end, { "i", "s" }
            ),

            ["<S-Tab>"] = cmp.mapping(
                function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }
            ),
    }),

    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    }),

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    formatting = {
        fields = { "abbr", "kind", "menu" },
        format = function(entry, vim_item)
            vim_item.menu = ({
                nvim_lsp = "[LSP]",
                luasnip = "[Snip]",
                buffer = "[Buffer]",
                path = "[Path]",
            })[entry.source.name]

            return vim_item
        end,
    },
})

