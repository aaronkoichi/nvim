return {

	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
[[																																]],
[[																																]],
[[		  /$$$$$$                                                /$$   /$$           /$$           /$$       /$$ /$$			]],
[[		 /$$__  $$                                              | $$  /$$/          |__/          | $$      |__/| $/			]],
[[		| $$  \ $$  /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$       | $$ /$$/   /$$$$$$  /$$  /$$$$$$$| $$$$$$$  /$$|_//$$$$$$$		]],    
[[		| $$$$$$$$ |____  $$ /$$__  $$ /$$__  $$| $$__  $$      | $$$$$/   /$$__  $$| $$ /$$_____/| $$__  $$| $$  /$$_____/		]],
[[		| $$__  $$  /$$$$$$$| $$  \__/| $$  \ $$| $$  \ $$      | $$  $$  | $$  \ $$| $$| $$      | $$  \ $$| $$ |  $$$$$$		]],
[[		| $$  | $$ /$$__  $$| $$      | $$  | $$| $$  | $$      | $$\  $$ | $$  | $$| $$| $$      | $$  | $$| $$  \____  $$		]],
[[		| $$  | $$|  $$$$$$$| $$      |  $$$$$$/| $$  | $$      | $$ \  $$|  $$$$$$/| $$|  $$$$$$$| $$  | $$| $$  /$$$$$$$/		]],
[[		|__/  |__/ \_______/|__/       \______/ |__/  |__/      |__/  \__/ \______/ |__/ \_______/|__/  |__/|__/ |_______/		]],
[[																																]],
[[																		   		                                                ]],
[[							                                                                                                  ]],
[[							       ████ ██████           █████      ██                                                  ]],
[[							      ███████████             █████                                                          ]],
[[							      █████████ ███████████████████ ███   ███████████                                ]],
[[							     █████████  ███    █████████████ █████ ██████████████			                    ]],
[[							    █████████ ██████████ █████████ █████ █████ ████ █████                                ]],
[[							  ███████████ ███    ███ █████████ █████ █████ ████ █████                               ]],
[[							 ██████  █████████████████████ ████ █████ █████ ████ ██████                              ]],
[[                                                                                                                              ]],
[[                                                                                                                              ]],
}

		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		local function footer()
			return "Hello, AaronKoichi"
		end

		dashboard.section.footer.val = footer()

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
