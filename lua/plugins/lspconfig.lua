return {

	"neovim/nvim-lspconfig",

	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"SmiteshP/nvim-navbuddy",
		dependencies = {
			"SmiteshP/nvim-navic",
			"MunifTanjim/nui.nvim",
		},
		{ "antosha417/nvim-lsp-file-operations", config = true },
		opts = { lsp = { auto_attach = true } },
	},
	config = function()
		-- import lspconfig plugin
		local lspconfig = require("lspconfig")

		-- import cmp-nvim-lsp plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap -- for conciseness
		local navbuddy = require("nvim-navbuddy")
		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			-- set keybinds
			opts.desc = "Show LSP references"
			keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
			navbuddy.attach(client, bufnr)

			opts.desc = "Go to declaration"
			keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

			opts.desc = "Show LSP definitions"
			keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

			opts.desc = "Show LSP implementations"
			keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

			opts.desc = "Show LSP type definitions"
			keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

			opts.desc = "See available code actions"
			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

			opts.desc = "Smart rename"
			keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

			opts.desc = "Show buffer diagnostics"
			keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

			opts.desc = "Show line diagnostics"
			keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

			opts.desc = "Go to previous diagnostic"
			keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

			opts.desc = "Go to next diagnostic"
			keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

			opts.desc = "Show documentation for what is under cursor"
			keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

			opts.desc = "Restart LSP"
			keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
		end

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Change the Diagnostic symbols in the sign column (gutter)
		-- (not in youtube nvim video)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
		-- navbuddy setup
		local actions = require("nvim-navbuddy.actions")
		navbuddy.setup({
			window = { border = "rounded" },

			mappings = {
				["<esc>"] = actions.close(), -- Close and cursor to original location
				["q"] = actions.close(),

				["j"] = actions.next_sibling(), -- down
				["k"] = actions.previous_sibling(), -- up

				["h"] = actions.parent(), -- Move to left panel
				["l"] = actions.children(), -- Move to right panel
				["0"] = actions.root(), -- Move to first panel

				["v"] = actions.visual_name(), -- Visual selection of name
				["V"] = actions.visual_scope(), -- Visual selection of scope

				["y"] = actions.yank_name(), -- Yank the name to system clipboard "+
				["Y"] = actions.yank_scope(), -- Yank the scope to system clipboard "+

				["i"] = actions.insert_name(), -- Insert at start of name
				["I"] = actions.insert_scope(), -- Insert at start of scope

				["a"] = actions.append_name(), -- Insert at end of name
				["A"] = actions.append_scope(), -- Insert at end of scope

				["r"] = actions.rename(), -- Rename currently focused symbol

				["d"] = actions.delete(), -- Delete scope

				["f"] = actions.fold_create(), -- Create fold of current scope
				["F"] = actions.fold_delete(), -- Delete fold of current scope

				["c"] = actions.comment(), -- Comment out current scope

				["<enter>"] = actions.select(), -- Goto selected symbol
				["o"] = actions.select(),

				["J"] = actions.move_down(), -- Move focused node down
				["K"] = actions.move_up(), -- Move focused node up

				["s"] = actions.toggle_preview(), -- Show preview of current node

				["<C-v>"] = actions.vsplit(), -- Open selected node in a vertical split
				["<C-s>"] = actions.hsplit(), -- Open selected node in a horizontal split

				["t"] = actions.telescope({ -- Fuzzy finder at current level.
					layout_config = { -- All options that can be
						height = 0.60, -- passed to telescope.nvim's
						width = 0.60, -- default can be passed here.
						prompt_position = "top",
						preview_width = 0.50,
					},
					layout_strategy = "horizontal",
				}),

				["g?"] = actions.help(), -- Open mappings help window
			},
		})

		-- configure html server
		lspconfig["html"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- configure typescript server with plugin
		lspconfig["tsserver"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- configure java server with plugin
		lspconfig["jdtls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		-- configure clangd server with plugin
		lspconfig["clangd"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		-- configure css server
		lspconfig["cssls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- configure tailwindcss server
		lspconfig["tailwindcss"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		-- configure svelte server
		lspconfig["svelte"].setup({
			capabilities = capabilities,
			on_attach = function(client, bufnr)
				on_attach(client, bufnr)

				vim.api.nvim_create_autocmd("BufWritePost", {
					pattern = { "*.js", "*.ts" },
					callback = function(ctx)
						if client.name == "svelte" then
							client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
						end
					end,
				})
			end,
		})

		-- configure prisma orm server
		lspconfig["prismals"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- configure graphql language server
		lspconfig["graphql"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
		})

		-- configure emmet language server
		lspconfig["emmet_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
		})

		-- configure python server
		lspconfig["pyright"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		-- configure ast_grep server
		lspconfig["ast_grep"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["rust_analyzer"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- configure lua server (with special settings)
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = { -- custom settings for lua
				Lua = {
					-- make the language server recognize "vim" global
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						-- make language server aware of runtime files
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
	end,
}
