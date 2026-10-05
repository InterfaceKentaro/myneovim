local vim = vim
local cmd
local bin = vim.fn.stdpath("data") .. "/mason/bin"

vim.lsp.config['gopls'] = {
    cmd = { bin .. "/gopls" },
    root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
    filetypes = {'go'},
    settings = {},
}
vim.lsp.enable('gopls');

vim.lsp.config["pylsp"] = {
    cmd = { bin .. "/pylsp" },
    filetypes = { "python" }
}
vim.lsp.enable("pylsp")

-- This deno lsp runs on docker or podman. the `./denolsp` is a wrapper script. You can get the docker
-- image at the different repository. Or should I include it within this configuration directory?
vim.lsp.config['deno'] = {
    cmd = { bin .. "/denolsp" },
    filetypes = { 'javascript', 'typescript' },
    root_dir = vim.fs.dirname(vim.fs.find({ ".git", "main.js" }, { upward = true })[1]),
    settings = {
        deno = {
            enable = true,
            unstable = true
        }
    },
};
vim.lsp.enable('deno');

-- There's an jdtls wrapper script. 
vim.lsp.config['jdtls'] = {
    cmd = { bin .. "/jdtls", vim.fs.basename(vim.fn.getcwd()) },
    root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "gradlew", ".git", "mvnw", }, { upward = true })[1]),
    filetypes = {'java'},
    settings = { java = {} },
}
vim.lsp.enable('jdtls')

cmd = bin .. '/lua-language-server'
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

cmd = bin .. "/zls"
vim.lsp.config['zls'] = {
    cmd = {
        cmd
    },
    filetypes = { 'zig' },
    root_markers = {  },
    settings = {

    }
}
vim.lsp.enable('zls')
