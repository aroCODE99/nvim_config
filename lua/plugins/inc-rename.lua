return {
  "smjonas/inc-rename.nvim",
  config = function()
    require("inc_rename").setup({
      cmd_name = "IncRename",
      hl_group = "Substitute",  -- This is the highlight group being used
      preview_empty_name = false,
      show_message = true,
      save_in_cmdline_history = true,
      input_buffer_type = nil,
      post_hook = nil,
    })

    -- Set highlight for the Substitute group
    vim.api.nvim_set_hl(0, "Substitute", { fg = "#000000", bg = "#d3d3d3", bold = true })

    -- Key mapping for renaming
    vim.keymap.set("n", "<leader>r", ":IncRename ")
  end,
}

