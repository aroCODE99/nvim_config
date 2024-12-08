return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					prompt_position = "top",
					width = 0.9, -- Adjust width of the Telescope window
					preview_width = 0.5, -- Adjust width of the preview area
					height = 0.9, -- Adjust height of the window
				},

				sorting_strategy = "ascending", -- This sorts results top to bo
			},
			pickers = {
				find_files = {
					find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
					file_ignore_patterns = { "cache/*", "node_modules", ".git/" }, -- Example ignore patterns
				},
			},
		})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>fs", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
	end,
}
