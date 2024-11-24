return {
	{
		"stevearc/conform.nvim",
		config = function()
			-- Setup conform for formatting
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					javascript = { "prettier --tab-width 4" },
					typescript = { "prettier --tab-width 4" },
					java = { "jdtls" },
				},
				format_on_save = {
					lsp_format = "fallback",
					timeout_ms = 500,
				},
			})
			--formatting on save
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
		end,
	},
	{
		"mfussenegger/nvim-lint",
		config = function()
			-- Setup linters for different file types
			require("lint").linters_by_ft = {
				python = { "ruff" },
				javascript = { "eslint" },
				typescript = { "eslint" },
			}
		end,
	},
}
