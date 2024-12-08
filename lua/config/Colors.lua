vim.cmd.colorscheme("habamax")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Define a custom highlight group for yank
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#ffeb3b", fg = "#000000" }) -- Yellow background, black text

-- Create an autocmd group and apply yank highlight
vim.api.nvim_create_augroup("highlight_yank", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "highlight_yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 150 })
	end,
})
