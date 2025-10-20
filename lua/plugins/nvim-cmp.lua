return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- 挿入モードに入ったときにロード

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip", -- スニペットエンジン
  },
  --config
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        -- REQUIRED - ここでスニペットエンジンをセットアップします
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

        ["<S-Tab>"] = cmp.mapping(function(fallback)
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
      { name = "nvim_lsp" }, -- LSPソース
      { name = "luasnip" },  -- スニペットソース
      { name = "buffer" },   -- 現在のバッファ
      { name = "path" },     -- ファイルパス
    }),

    window = {
      completion = cmp.config.window.bordered(), -- 補完ウィンドウのスタイル
      documentation = cmp.config.window.bordered(), -- ドキュメントウィンドウのスタイル
    },

    formatting = {
      fields = { "abbr", "kind", "menu" },
      format = 
      function(entry, vim_item)
        -- 補完項目の表示をカスタマイズ
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
  end,
}

