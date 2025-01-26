return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Keymap to toggle Neo-tree
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

    -- Configure Neo-tree
    require("neo-tree").setup({
      close_if_last_window = true, -- Close Neo-tree if it's the last window open
      enable_diagnostics = true, -- Enable diagnostic integration
      default_component_configs = {
        indent = {
          with_expanders = true, -- Enable expanders for folders
          expander_collapsed = "",
          expander_expanded = "",
        },
      },
      window = {
        position = "left",
        width = 30,
        mappings = {},
      },
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files and folders
          hide_dotfiles = false, -- Do not hide files starting with `.`
          hide_gitignored = true, -- Do not hide `.gitignore`-ignored files
        },
      },
    })

    -- Apply transparent highlights
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { bg = "NONE", fg = "#ffffff", bold = true }) -- Optional: Customize root folder name color
    vim.api.nvim_set_hl(0, "NeoTreeFileName", { bg = "NONE", fg = "#ffffff" }) -- Optional: Customize file name color
    vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { bg = "NONE", fg = "#00ff00", bold = true }) -- Optional: Green for opened files
  end,
}

