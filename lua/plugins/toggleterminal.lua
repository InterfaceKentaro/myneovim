return {
	"akinsho/toggleterm.nvim", 
	version = "*",
	config = function() 
		require'toggleterm'.setup({
			-- write your config here...
            direction = "float",
            terminal_mappings = true,
		});
	end,
}
