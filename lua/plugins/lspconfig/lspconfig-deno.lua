local cmd = vim.fn.stdpath('data') .. "/mason/bin/deno";
vim.lsp.config['deno'] = {
    cmd = {cmd},
    filetypes = {
        'javascript', 'typescript', 'js'
    },
    root_dir = vim.fs.dirname(vim.fs.find({ ".git", "mvnw" }, { upward = true })[1]),
    settings = {
        enable = true,
    },
};

vim.lsp.enable('deno');
