return {
  "zbirenbaum/copilot.lua",
  lazy = false,
  config = function()
    require("copilot").setup({
      suggestion = { 
        enabled = true,
        keymap = {
          accept = "<C-j>", -- Accept Copilot suggestion
          dismiss = "<C-k>", -- Dismiss Copilot suggestion
        },
      },
      panel = { enabled = true },
    })
  end,
}

