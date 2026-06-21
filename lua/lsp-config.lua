local vim = vim
local cmd

cmd = vim.fn.stdpath("data") .. "/mason/bin/vscode-css-language-server"
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

cmd = vim.fn.stdpath("data") .. "/mason/bin/vscode-css-language-server"
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

cmd = vim.fn.stdpath("data") .. "/mason/bin/gopls"
vim.lsp.config['gopls'] = {
    cmd = {
        cmd
    },
    root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
    filetypes = {'go'},
    settings = {

    },
}
vim.lsp.enable('gopls');

cmd = vim.fn.stdpath("data") .. "/mason/bin/vscode-html-language-server";
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

cmd = vim.fn.stdpath('data') .. "/mason/bin/deno";
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

cmd = vim.fn.stdpath("data") .. "/mason/bin/groovy-language-server"
vim.lsp.config['groovy-language-server'] = {
    cmd = {
        cmd
    },
    filetypes = {'build', 'groovy'},
    root_marker = {},

    settings = {

    },
}
vim.lsp.enable('groovy-language-server');

cmd = vim.fn.stdpath("data") .. "/mason/bin/jdtls"
vim.lsp.config['jdtls'] = {
    cmd = {
        cmd
    },
    root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "gradlew", ".git", "mvnw", }, { upward = true })[1]),
    filetypes = {'java'},
    settings = {

    },
}
vim.lsp.enable('jdtls')

cmd = vim.fn.stdpath('data') .. '/mason/bin/lua-language-server'
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

cmd = vim.fn.stdpath("data") .. "/mason/bin/zls"
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

cmd = vim.fn.stdpath"data" .. "/mason/bin/typescript-language-server";
vim.lsp.config['typescript-language-server'] = {
    cmd = {
        cmd,
        "--stdio"
    },
    -- root_fir = vim.fs.dirname(vim.fs.find({'.git'}, { upward = true })[1]),
    filetypes = {'javascript', 'typescript', 'html'},
    settings = {},
};
vim.lsp.enable("typescript-language-server");

cmd = vim.fn.stdpath('data').."/mason/bin/docker-language-server";
vim.lsp.config["dockerls"] = {
    cmd = {
        cmd,
        "start",
        "--studio", 
        "--verbose"
    },
    filetypes = {"dockerfile"},
    settings = {}
}
vim.lsp.enable("dockerls")
