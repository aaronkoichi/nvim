
	-- rose-pine setup
	return { 
		'rose-pine/neovim', 
		name = 'rose-pine', 
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'rose-pine'
		end
	}
