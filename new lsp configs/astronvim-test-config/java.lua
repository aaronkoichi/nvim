return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.java" },
	{
		"mfussenegger/nvim-jdtls",
		opts = {
			settings = {
				java = {
					configuration = {
						runtimes = {
							{
								name = "JavaSE-21",
								path = "usr/lib/jvm/java-21-openjdk-amd64",
							},
						},
					},
				},
			},
		},
	},
}
