return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		--[[ opts = function ()
			return {
				transparent = true,
			}
		end, ]]
		config = function()
			require("catppuccin").setup({
				transparent_background = "false",
				flavour = "mocha",
				integrations = {
					noice = false,
				},
			})
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
}
