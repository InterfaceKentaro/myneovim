local cmd = vim.fn.stdpath('data') .. "/mason/bin/deno";
vim.lsp.config['deno'] = {
    cmd = {cmd}, 
    filetypes = {'javascript', 'typescript', 'js'},
    rootmarker = {},
    settings = {},
};
vim.lsp.enable('deno');
