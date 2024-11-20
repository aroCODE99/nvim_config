return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint_d"),
      },
    })

    -- Keymap for saving and formatting
    -- Keymap for saving and formatting

    vim.keymap.set("n", "<C-A-l>", vim.lsp.buf.format, { noremap = true, silent = true })
  end,
}
