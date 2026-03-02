local bin = vim.fn.stdpath("data") .. "/mason/bin/gopls"

vim.lsp.config['gopls'] = {
  cmd = {
      bin
  },
  root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
  filetypes = {'go'},
  settings = {

  },
}

vim.lsp.enable('gopls');
