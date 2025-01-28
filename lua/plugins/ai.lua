return {
  "zbirenbaum/copilot.lua",
  lazy = false,
  config = function()
    require("copilot").setup({
      suggestion = { enabled = true },
      panel = { enabled = true },
    })
  end,
}

