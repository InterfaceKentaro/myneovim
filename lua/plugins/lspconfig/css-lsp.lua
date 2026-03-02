local cmd = vim.fn.stdpath("data") .. "/mason/bin/vscode-css-language-server"

vim.lsp.config['css-lsp'] = {
  cmd = {
    cmd, "--stdio"
  },
  root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
  filetypes = {'css', 'html'},
  settings = {
  },
}

vim.lsp.enable('css-lsp');
