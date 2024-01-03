return {

	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[			   ▄▀█ ▄▀█ █▀█ █▀█ █▄░█   █▄▀ █▀█ █ █▀▀ █░█ █ ▀ █▀			 ]],
			[[			   █▀█ █▀█ █▀▄ █▄█ █░▀█   █░█ █▄█ █ █▄▄ █▀█ █ ░ ▄█			 ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
}

		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		local function footer()
			return "Hello, AaronKoichi"
		end
		dashboard.section.buttons.val = {
			dashboard.button("f", "    > Open Telescope", ":Telescope find_files<CR>")
		}
		dashboard.section.footer.val = footer()

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
