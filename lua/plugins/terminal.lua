return{
  "akinsho/nvim-toggleterm.lua",
  config = function ()
     require("toggleterm").setup{
       size = 10,
       open_mapping = [[<c-`>]],
       shade_filetypes = {},
       shade_terminals = true,
       shading_factor = 2,
       start_in_insert = true,
       persist_size = true,
       direction = 'horizontal',
    }
    vim.api.nvim_set_keymap(
      "n",
      "<leader>t1",
      ":ToggleTerm 1<CR>", -- First terminal
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      "n",
      "<C-t>2", -- Ctrl + t followed by 2
      ":ToggleTerm 2<CR>",
      { noremap = true, silent = true }
    )
  end,
}
