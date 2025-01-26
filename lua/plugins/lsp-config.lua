return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        ui = {
        check_outdated_packages_on_open = true,
        border = "rounded",
        width = 0.8,
        height = 0.7,
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      auto_install = true, -- Automatically install LSP servers
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      -- Required modules
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local capabilities = cmp_nvim_lsp.default_capabilities()

      -- Keybindings for LSP functionality
      local bind = vim.keymap.set
      local opts = { noremap = true, silent = true }

      bind("n", "K", vim.lsp.buf.hover, opts)
      bind("n", "<leader>gd", vim.lsp.buf.definition, opts)
      bind("n", "<leader>gr", vim.lsp.buf.references, opts)
      bind("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      bind("n", "<leader>rn", vim.lsp.buf.rename, opts)
      bind("n", "[d", vim.diagnostic.goto_prev, opts)
      bind("n", "]d", vim.diagnostic.goto_next, opts)
      bind("n", "<leader>e", vim.diagnostic.open_float, opts)
      bind("n", "<leader>q", vim.diagnostic.setloclist, opts)

      -- LSP Servers Setup
      local servers = {
        "ts_ls", -- TypeScript/JavaScript
        "solargraph", -- Ruby
        "html", -- HTML
        "lua_ls", -- Lua
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end

      -- Additional configuration for specific servers
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- Recognize `vim` as a global variable
            },
          },
        },
      })
    end,
  },
}

