return {
    "windwp/nvim-ts-autotag",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
        require("nvim-ts-autotag").setup({
            enable = true,           -- Enable autotagging
            filetypes = {
                html = { enable_close = false }, -- Specific config for HTML
                -- Add other filetypes here if needed
            },
            -- General options
            opts = {
                enable_close = true, -- Auto close tags
                enable_rename = true, -- Auto rename pairs of tags
                enable_close_on_slash = false, -- Auto close on trailing </
            },
        })
    end,
}
