return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "gbprod/none-ls-shellcheck.nvim",
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,

          null_ls.builtins.formatting.black,

          null_ls.builtins.formatting.clang_format,

          null_ls.builtins.formatting.shfmt,


          null_ls.builtins.formatting.markdownlint,

          null_ls.builtins.diagnostics.yamllint,
        },
      })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
      print(vim.inspect(null_ls.get_sources()))

    end,
  },
}

