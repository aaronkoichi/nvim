
-- telescope setup
return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			-- telescope
			local builtin = require("telescope.builtin")
			-- press [space]fg to use telescope.
			vim.keymap.set('n', '<leader>fg', builtin.find_files, {})
		end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup ({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
							-- even more opts
						}
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	}
}

