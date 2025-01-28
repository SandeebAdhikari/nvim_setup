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
  end,
}
