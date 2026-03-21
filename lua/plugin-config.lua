print('hello')

local silentium = require('silentium')
silentium.setup({ accent = "#3FA5B9" })
print(silentium.colors.accent)

local moonfly = require('lualine.themes.moonfly')
moonfly.insert.a.bg = '#5ae080'

require("lualine").setup({
    options = {
        theme = 'moonfly',
        section_separators = '',
        component_separators = ''
    },
})

require('mason').setup({
})

require('mason-lspconfig').setup({
    opts = {
        automatic_enable = {
            'lua_ls',
            'zls',
            'jdtls',
            'gopls',
        }
    }
})

require('im_select').setup({
    set_default_events = {
        "VimEnter",
        "InsertLeave",
        "CmdlineLeave"
    }
})

local luasnip = require('luasnip')
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),

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

