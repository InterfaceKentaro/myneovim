local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


require("lazy").setup({
    spec = {
        require'plugins.toggleterminal',
        require'plugins.colorschemes',
        require'plugins.lualine',
        require'plugins.nvim-web-devicons',
        require'plugins.rip-grep',
        require'plugins.telescope-fzf-native',
        require'plugins.treesitter',
        require'plugins.telescope',
        require'plugins.nvim-autopairs',
        require'plugins.nvim-cmp',
        require'plugins.im-select',
        require'plugins.mason',
        require'plugins.transparent',
        require'plugins.harpoon',
    },
    install = {   },
    checker = { enabled = true },
})
