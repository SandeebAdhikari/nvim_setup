return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add          = { text = "+" },
          change       = { text = "~" },
          delete       = { text = "-" },
          topdelete    = { text = "‾" },
          changedelete = { text = "≃" },
          untracked    = { text = '┆' },
        },
        signs_staged = {
          add          = { text = "+" },
          change       = { text = "~" },
          delete       = { text = "-" },
          topdelete    = { text = "‾" },
          changedelete = { text = "≃" },
          untracked    = { text = '┆' },
        },
        current_line_blame = true,
        update_debounce = 100,
        preview_config = {
          border = "rounded",
        },
      })

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>")
      vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>")
      vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")
      vim.keymap.set("n", "[c", ":Gitsigns prev_hunk<CR>")
      vim.keymap.set("n", "]c", ":Gitsigns next_hunk<CR>")
    end,
  },
}

