return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "mfussenegger/nvim-jdtls" },
		opts = {
			setup = {
				jdtls = function(_, opts)
					vim.api.nvim_create_autocmd("FileType", {
						pattern = "java",
						callback = function()
							require("lazyvim.util").on_attach(function(_, buffer)
								vim.keymap.set(
									"n",
									"<leader>di",
									"<Cmd>lua require'jdtls'.organize_imports()<CR>",
									{ buffer = buffer, desc = "Organize Imports" }
								)
								vim.keymap.set(
									"n",
									"<leader>dt",
									"<Cmd>lua require'jdtls'.test_class()<CR>",
									{ buffer = buffer, desc = "Test Class" }
								)
								vim.keymap.set(
									"n",
									"<leader>dn",
									"<Cmd>lua require'jdtls'.test_nearest_method()<CR>",
									{ buffer = buffer, desc = "Test Nearest Method" }
								)
								vim.keymap.set(
									"v",
									"<leader>de",
									"<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",
									{ buffer = buffer, desc = "Extract Variable" }
								)
								vim.keymap.set(
									"n",
									"<leader>de",
									"<Cmd>lua require('jdtls').extract_variable()<CR>",
									{ buffer = buffer, desc = "Extract Variable" }
								)
								vim.keymap.set(
									"v",
									"<leader>dm",
									"<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",
									{ buffer = buffer, desc = "Extract Method" }
								)
								vim.keymap.set(
									"n",
									"<leader>cf",
									"<cmd>lua vim.lsp.buf.formatting()<CR>",
									{ buffer = buffer, desc = "Format" }
								)
							end)

							local bundles = {

									vim.fn.glob(
										"~/.config/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.50.0.jar",
										1
									),


							}
							local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
							-- vim.lsp.set_log_level('DEBUG')
							local workspace_dir = "/home/jake/.workspace/" .. project_name -- See `:help vim.lsp.start_client` for an overview of the supported `config` options.

							local config = {
								-- The command that starts the language server
								-- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
								cmd = {

									"java", -- or '/path/to/java17_or_newer/bin/java'
									-- depends on if `java` is in your $PATH env variable and if it points to the right version.

									"-javaagent:/home/jake/.local/share/java/lombok.jar",
									-- '-Xbootclasspath/a:/home/jake/.local/share/java/lombok.jar',
									"-Declipse.application=org.eclipse.jdt.ls.core.id1",
									"-Dosgi.bundles.defaultStartLevel=4",
									"-Declipse.product=org.eclipse.jdt.ls.core.product",
									"-Dlog.protocol=true",
									"-Dlog.level=ALL",
									-- '-noverify',
									"-Xms1g",
									"--add-modules=ALL-SYSTEM",
									"--add-opens",
									"java.base/java.util=ALL-UNNAMED",
									"--add-opens",
									"java.base/java.lang=ALL-UNNAMED",
									"-jar",
									vim.fn.glob(
										"/home/koichi/java/library/jdt-language-server-1.30.1-202312071447/plugins/org.eclipse.equinox.launcher_1.6.600.v20231106-1826.jar"
									),
									-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
									-- Must point to the                                                     Change this to
									-- eclipse.jdt.ls installation                                           the actual version

									"-configuration",
									"/usr/share/java/jdtls/config_linux",
									-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
									-- Must point to the                      Change to one of `linux`, `win` or `mac`
									-- eclipse.jdt.ls installation            Depending on your system.

									-- See `data directory configuration` section in the README
									"-data",
									workspace_dir,
								},

								-- This is the default if not provided, you can remove it. Or adjust as needed.
								-- One dedicated LSP server & client will be started per unique root_dir
								root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),

								-- Here you can configure eclipse.jdt.ls specific settings
								-- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
								-- for a list of options
								settings = {
									java = {},
								},
								handlers = {
									["language/status"] = function(_, result)
										-- print(result)
									end,
									["$/progress"] = function(_, result, ctx)
										-- disable progress updates.
									end,
								},
								
								

								vim.list_extend(bundles, vim.split(vim.fn.glob("~/.config/vscode-java-test/server/*.jar", 1), "\n")),
								init_options = {
									bundles = bundles;
								},

							}
							
							require("jdtls").start_or_attach(config)
							require("jdtls").test_class()
							require("jdtls").test_nearest_method()
						end,
					})
					return true
				end,
			},
		},
	},
}
