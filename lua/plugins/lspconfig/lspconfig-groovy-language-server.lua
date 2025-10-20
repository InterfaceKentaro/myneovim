local groovy_ls_cmd = vim.fn.stdpath("data") .. "/mason/bin/groovy-language-server"

vim.lsp.config['groovy-language-server'] = {
  cmd = { groovy_ls_cmd },
  filetypes = {'build', 'groovy'},
  root_marker = {},

  settings = {

  },
}

vim.lsp.enable('groovy-language-server');
