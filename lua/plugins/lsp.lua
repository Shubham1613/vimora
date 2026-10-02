return {
	{
		"neovim/nvim-lspconfig",

		dependencies = {
			{
				"mason-org/mason.nvim",

				opts = {
					ui = {
						border = "rounded",
					},
				},
			},

			{
				"mason-org/mason-lspconfig.nvim",

				opts = {
					ensure_installed = {
						"lua_ls",
						"ts_ls",
						"html",
						"cssls",
						"jsonls",
						"yamlls",
						"bashls",
						"pyright",
						"gopls",
						"rust_analyzer",
						"clangd",
						"dockerls",
						"marksman",
					},

					automatic_enable = true,
				},
			},
		},

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Lua
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,

				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},

						diagnostics = {
							globals = {
								"vim",
							},
						},

						workspace = {
							checkThirdParty = false,
						},

						telemetry = {
							enable = false,
						},
					},
				},
			})

			-- TypeScript / JavaScript
			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})

			-- Python
			vim.lsp.config("pyright", {
				capabilities = capabilities,
			})

			-- Go
			vim.lsp.config("gopls", {
				capabilities = capabilities,

				settings = {
					gopls = {
						gofumpt = true,
						staticcheck = true,
						usePlaceholders = true,
					},
				},
			})

			-- Rust
			vim.lsp.config("rust_analyzer", {
				capabilities = capabilities,

				settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},

						check = {
							command = "clippy",
						},
					},
				},
			})

			-- C/C++
			vim.lsp.config("clangd", {
				capabilities = capabilities,
			})

			-- HTML
			vim.lsp.config("html", {
				capabilities = capabilities,
			})

			-- CSS
			vim.lsp.config("cssls", {
				capabilities = capabilities,
			})

			-- JSON
			vim.lsp.config("jsonls", {
				capabilities = capabilities,
			})

			-- YAML
			vim.lsp.config("yamlls", {
				capabilities = capabilities,
			})

			-- Bash
			vim.lsp.config("bashls", {
				capabilities = capabilities,
			})

			-- Docker
			vim.lsp.config("dockerls", {
				capabilities = capabilities,
			})

			-- Markdown
			vim.lsp.config("marksman", {
				capabilities = capabilities,
			})

			-- LSP keymaps
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(event)
					local opts = {
						buffer = event.buf,
						silent = true,
					}

					local map = vim.keymap.set

					map("n", "gd", vim.lsp.buf.definition, opts)
					map("n", "gD", vim.lsp.buf.declaration, opts)
					map("n", "gr", vim.lsp.buf.references, opts)
					map("n", "gi", vim.lsp.buf.implementation, opts)

					map("n", "K", vim.lsp.buf.hover, opts)

					map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
					map("n", "<leader>rn", vim.lsp.buf.rename, opts)

					map("n", "<leader>D", vim.lsp.buf.type_definition, opts)

					map("n", "<leader>ds", vim.lsp.buf.document_symbol, opts)

					map("n", "[d", vim.diagnostic.goto_prev, opts)
					map("n", "]d", vim.diagnostic.goto_next, opts)

					map("n", "<leader>dl", vim.diagnostic.open_float, opts)

					map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
					map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
					map("n", "<leader>wl", function()
						print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					end, opts)
				end,
			})

			vim.diagnostic.config({
				virtual_text = {
					spacing = 4,
					prefix = "●",
				},

				signs = true,

				underline = true,

				update_in_insert = false,

				severity_sort = true,

				float = {
					border = "rounded",
					source = "if_many",
				},
			})
		end,
	},
}
