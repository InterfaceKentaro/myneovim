local cmd = vim.fn.stdpath("data") .. "/mason/bin/vscode-html-language-server";

vim.lsp.config['html-lsp'] = {
    cmd = {
        cmd, "--stdio"
    },
    root_dir = vim.fs.dirname(vim.fs.find({'.git'}, { upward = true })[1]),
    filetypes = {'html'},
    settings = {
    },
}
vim.lsp.enable('html-lsp');
