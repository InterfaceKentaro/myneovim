local excludes = {
    alpha = false,
    blinkcmp = false,
    dashboard = false,
    dapui = false,
    fzflua = false,
    gitsigns = false,
    gitpad = false,
    grapple = false,
    grugfar = false,
    heirline = false,
    helpview = false,
    hop = false,
    indentblankline = false,
    kubectl = false,
    lazy = false,
    leap = false,
    lualine = false,
    markview = false,
    mini = false,
    noice = false,
    cmp = false,
    notify = false,
    treesitter = false,
    treesittercontext = false,
    rainbow_delimiters = false,
    markdown = false,
    telescope = false,
    trouble = false,
    whichkey = false,
};

return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    config = function ()
        require"cyberdream".setup({
            saturation = 0.9,
            extensions = excludes,
        })
    end,

    init = function ()
        vim.cmd[[colorscheme cyberdream]];
    end
}




