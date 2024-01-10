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
			[[		    	   ▄▀█ ▄▀█ █▀█ █▀█ █▄░█   █▄▀ █▀█ █ █▀▀ █░█ █ ▀ █▀		       ]],
			[[		     	   █▀█ █▀█ █▀▄ █▄█ █░▀█   █░█ █▄█ █ █▄▄ █▀█ █ ░ ▄█	         ]],
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
		}

		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "    > Open Telescope", ":Telescope find_files<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}
