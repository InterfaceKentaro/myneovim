vim.api.nvim_set_keymap('n', '<Leader>sw', ':set wrap<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>snw', ':set nowrap<CR>', {noremap=true})

--- tabs keymaps
vim.keymap.set('n', '<Leader>e', function()
    vim.cmd([[e .]])
end, {noremap=true})


-- tab related keymap
vim.api.nvim_set_keymap('n', '<Leader>tn', ':tabnew<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>tp', ':tabnext<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>tq', ':tabprevious<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>tx', ':tabclose<CR>', {noremap=true})

--- panel toggle keymaps
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', {noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', {noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', {noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', {noremap=true})


-- lsp floating window 
vim.api.nvim_set_keymap('n', '<Leader>wd', ':lua vim.diagnostic.open_float({scope = \'line\'})<CR>', {noremap=true})


-- telescope 
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files hidden=true<CR>', {noremap = true})


-- harpoon
vim.api.nvim_set_keymap('n', '<Leader>ha', ':lua require("harpoon.mark").add_file()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>hu', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>hh', ':lua require("harpoon.ui").nav_next()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>h1', ':lua require("harpoon.ui").nav_file(1)<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>h2', ':lua require("harpoon.ui").nav_file(2)<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>h3', ':lua require("harpoon.ui").nav_file(3)<CR>', {noremap = true})


-- ToggleTerm keymaps
vim.api.nvim_set_keymap('n', '<Leader>tt', ':lua vim.cmd[[ToggleTerm]]<CR>', {noremap = true});
vim.api.nvim_set_keymap('t', '<Leader>th', '<C-\\><c-n>', {noremap = true});


-- lsp 
