local cmd = vim.fn.stdpath"data" .. "/mason/bin/typescript-language-server";

vim.lsp.config['typescript-language-server'] = {
    cmd = {
        cmd,
        "--stdio"
    },

    -- root_fir = vim.fs.dirname(vim.fs.find({'.git'}, { upward = true })[1]),
    filetypes = {'javascript', 'typescript'},
    settings = {},
};

vim.lsp.enable("typescript-language-server");
