return {
	"marko-cerovac/material.nvim",
	config = function()
		require("material").setup({
			plugins = {
				"gitsigns",
				"harpoon",
				"indent-blankline",
				"neo-tree",
				"noice",
				"nvim-cmp",
				"nvim-web-devicons",
				"telescope",
				"trouble",
			},
			lualine_style = "stealth"

		})
		vim.g.material_style = "darker"
		vim.cmd("colorscheme material")
		--Lua:
	end,
}
