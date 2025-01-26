return {
    "gbprod/yanky.nvim", -- Plugin repository
    config = function()
        require("yanky").setup({
            highlight = {
                on_put = true, -- Highlight pasted text
                on_yank = true, -- Highlight yanked text
                timer = 500, -- Highlight duration in milliseconds
            },
            ring = {
                history_length = 50, -- Maximum number of yanks to keep in history
                sync_with_register = true, -- Sync with system clipboard
            },
            system_clipboard = {
                sync_with_ring = true, -- Sync yanks with the system clipboard
            },
        })

        -- Key mappings for nvim-yanky
       -- Ctrl+C for copying (Visual Mode)
        vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })

        -- Ctrl+P for pasting (Normal Mode)
        vim.keymap.set("n", "<C-p>", '"+p', { desc = "Paste from system clipboard" })
        -- Ctrl+Z for Undo
        vim.keymap.set("n", "<C-z>", "u", { noremap = true, silent = true, desc = "Undo in Normal mode" })
        vim.keymap.set("i", "<C-z>", "<Esc>u", { noremap = true, silent = true, desc = "Undo in Insert mode" })
  end,
}

