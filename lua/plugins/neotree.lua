
-- Neo-tree setup
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", 
		"MunifTanjim/nui.nvim",
	},
	config = function()

		-- press [space]n to reveal neotree.
		vim.keymap.set('n', '<leader>n',':Neotree filesystem reveal left<CR>', {})
	end
}
