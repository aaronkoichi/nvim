return {
	"https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
	config = function()
		require("sonarlint").setup({
			server = {
				cmd = {
					"sonarlint-language-server",
					-- Ensure that sonarlint-language-server uses stdio channel
					"-stdio",
					"-analyzers",
					-- paths to the analyzers you need, using those for python and java in this example
					vim.fn.expand("~/.local/share/nvim/mason/share/sonarpython.jar"),
					vim.fn.expand("~/.local/share/nvim/mason/share/sonarlint-analyzers/sonarcfamily.jar"),
					vim.fn.expand("~/.local/share/nvim/mason/share/sonarlint-analyzers/sonarjava.jar"),
				},
			},
			filetypes = {
				-- Tested and working
				"python",
				"cpp",
				"java",
			},
		})
	end,
}
