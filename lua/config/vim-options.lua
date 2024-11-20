local opt = vim.opt

-- for Searching ditching telescope
opt.path:append("**")
opt.wildignore:append("*.class*,")  
--grep configureation
vim.opt.grepprg = "rg --vimgrep $* ."
vim.opt.grepformat = "%f:%l:%c:%m"

-- Define a custom highlight group for yank
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#ffeb3b", fg = "#000000" }) -- Yellow background, black text

-- Create an autocmd group and apply yank highlight
vim.api.nvim_create_augroup("highlight_yank", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    group = "highlight_yank",
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 200 })
    end,
})

-- Tab / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.completeopt = "menuone,noinsert,noselect"

-- Behaviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.selection = "exclusive"
opt.mouse = "a"
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.guicursor = ""
opt.encoding = "UTF-8"
opt.showmode = true

-- folds
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99

opt.statusline = "%< %h%m%r%=%-14.(%l,%c%V%) %P %{mode()}"
