local docker = vim.fn.stdpath("data") .. "/mason/bin/docker-language-server"
vim.lsp.config['dockerls'] = {
  -- Command and arguments to start the server.
  cmd = { 
    docker
  },
  filetypes = { 'dockerfile' },
  root_markers = { '.git' },
  settings = {

  }
}

vim.lsp.enable('dockerls')
