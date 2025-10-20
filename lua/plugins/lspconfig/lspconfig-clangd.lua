-- empty function to ignore jdtls
--local noop = function() end

--require("mason-lspconfig").setup_handlers({
  --function(server_name)
    --lspconfig[server_name].setup({
      --on_attach = on_attach,
      --capabilities = capabilities,
    --})
  --end,
  --["jdtls"] = noop,
  --["lua-ls"] = noop,
--})



vim.lsp.config['clangd'] = {
    -- Command and arguments to start the server.
    cmd = { '/home/kenbo/clangd/clangd_20.1.8/bin/clangd' },
    --/home/kenbo/clangd/clangd_20.1.8/bin/
    -- Filetypes to automatically attach to.
    filetypes = { 'c' },

    -- Sets the "root directory" to the parent directory of the file in the
    -- current buffer that contains either a ".luarc.json" or a
    -- ".luarc.jsonc" file. Files that share a root directory will reuse
    -- the connection to the same LSP server.
    -- Nested lists indicate equal priority, see |vim.lsp.Config|.
    root_markers = {  },

    -- Specific settings to send to the server. The schema for this is
    -- defined by the server. For example the schema for lua-language-server
    -- can be found here https://ra
    --
    settings = {
        --Lua = {
            --runtime = {
                --version = 'LuaJIT',
            --}
    }
}

vim.lsp.enable('clangd')
