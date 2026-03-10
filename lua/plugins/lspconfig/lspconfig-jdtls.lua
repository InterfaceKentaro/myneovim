local jdtls_bin = vim.fn.stdpath("data") .. "/mason/bin/jdtls"

vim.lsp.config['jdtls'] = {
  cmd = {
    jdtls_bin
  },
  root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "gradlew", ".git", "mvnw", }, { upward = true })[1]),
  filetypes = {'java'},
  settings = {

  },
}

vim.lsp.enable('jdtls')
