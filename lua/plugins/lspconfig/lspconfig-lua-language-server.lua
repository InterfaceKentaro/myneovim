local cmd = vim.fn.stdpath('data') .. '/mason/bin/lua-language-server'


vim.lsp.config['luals'] = {
  cmd = { cmd },
  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
}


vim.lsp.enable('luals')
