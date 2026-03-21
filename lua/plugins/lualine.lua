return {
    "nvim-lualine/lualine.nvim",
    config = function ()
        local moonfly = require('lualine.themes.moonfly')
        moonfly.normal.a.bg = '#345523'
         require"lualine".setup({
            options = {
                section_separators = '',
                component_separators = ''
            }
        });
    end
}
