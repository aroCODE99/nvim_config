return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({
				log_level = vim.log.levels.DEBUG,
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			ensure_installed = {
				"pyright",
				"jdtls",
				"ts_ls",
				"clangd",
				"html",
				"lua_ls",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")

			local function on_attach(client, bufnr)
				print("LSP server attached")
				if client.server_capabilities.semanticTokensProvider then
					client.server_capabilities.semanticTokensProvider = nil
				end
				local bufopts = { noremap = true, silent = true, buffer = bufnr }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
				vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
			end

			lspconfig.lua_ls.setup({
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.ts_ls.setup({
				on_attach = on_attach,
			})

			lspconfig.clangd.setup({
				on_attach = on_attach,
			})

			lspconfig.pyright.setup({
				on_attach = on_attach,
			})

			lspconfig.html.setup({
				on_attach = on_attach,
			})

			lspconfig.jdtls.setup({
				on_attach = on_attach,
				flags = {
					debounce_text_changes = 150,
				},
				root_dir = lspconfig.util.root_pattern("pom.xml", "build.gradle", ".git"),
				settings = {
					java = {
						organizeImports = true,
					},
					codeGeneration = {
						generateGettersSetters = true,
						generateEqualsAndHashCode = true,
					},
				},
			})
		end,
	},
}
