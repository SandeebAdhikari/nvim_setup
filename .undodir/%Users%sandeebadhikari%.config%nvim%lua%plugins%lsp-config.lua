Vim�UnDo� �[U��r"=@)����<�oˀǒ�=����   T       },   #                          g�i;    _�                            ����                                                                                                                                                                                                                                                                                                                                                             g���     �         +          �         +    �         *          lazy = false,5��                        (                     �                        -              T       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g���     �         -        dependencies = {5��                         U                     �                         U                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g���     �         -        dependencies = {5��                         U                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g���     �         -          "hrsh7th/cmp-nvim-lsp",5��                         l                     5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                       -          v   &    g���    �   ,              }5��    ,                     [                     �    ,                     [                     5�_�                            ����                                                                                                                                                                                                                                                                                                                            -                      v        g��     �               -   return {     {       "williamboman/mason.nvim",       lazy = false,       config = function()         require("mason").setup()       end,     },     {   (    "williamboman/mason-lspconfig.nvim",       lazy = false,       opts = {         auto_install = true,       },     },     {       "neovim/nvim-lspconfig",       lazy = false,   )    event = {"BufReadPre", "BufNewFile"},       dependencies = {          "hrsh7th/cmp-nvim-lsp",       config = function()   I      local capabilities = require('cmp_nvim_lsp').default_capabilities()       ,      local lspconfig = require("lspconfig")         lspconfig.ts_ls.setup({   #        capabilities = capabilities         })   "      lspconfig.solargraph.setup({   #        capabilities = capabilities         })         lspconfig.html.setup({   #        capabilities = capabilities         })         lspconfig.lua_ls.setup({   #        capabilities = capabilities         })       5      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})   C      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})   C      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})   D      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})       end,     },   }5��            ,                      [              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        g��      �   ,              }�   -            �   (              5      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.r�   )            �                   �               5��                    (   5                   �      �    (   5                 �              c       5�_�      	                      ����                                                                                                                                                                                                                                                                                                                            -                      v        g��+     �               -   return {     {       "williamboman/mason.nvim",       lazy = false,       config = function()         require("mason").setup()       end,     },     {   (    "williamboman/mason-lspconfig.nvim",       lazy = false,       opts = {         auto_install = true,       },     },     {       "neovim/nvim-lspconfig",       lazy = false,   )    event = {"BufReadPre", "BufNewFile"},       dependencies = {          "hrsh7th/cmp-nvim-lsp",       config = function()   I      local capabilities = require('cmp_nvim_lsp').default_capabilities()       ,      local lspconfig = require("lspconfig")         lspconfig.ts_ls.setup({   #        capabilities = capabilities         })   "      lspconfig.solargraph.setup({   #        capabilities = capabilities         })         lspconfig.html.setup({   #        capabilities = capabilities         })         lspconfig.lua_ls.setup({   #        capabilities = capabilities         })       5      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})   C      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})   C      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})   D      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})       end,     },   }5��            ,                      [              5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  v        g��+     �   ,              }�   -            �   (              5      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.r�   )            �                   �               5��                    (   5                   �      �    (   5                 �              c       5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                       -          v       g��7     �               -   return {     {       "williamboman/mason.nvim",       lazy = false,       config = function()         require("mason").setup()       end,     },     {   (    "williamboman/mason-lspconfig.nvim",       lazy = false,       opts = {         auto_install = true,       },     },     {       "neovim/nvim-lspconfig",       lazy = false,   )    event = {"BufReadPre", "BufNewFile"},       dependencies = {          "hrsh7th/cmp-nvim-lsp",       config = function()   I      local capabilities = require('cmp_nvim_lsp').default_capabilities()       ,      local lspconfig = require("lspconfig")         lspconfig.ts_ls.setup({   #        capabilities = capabilities         })   "      lspconfig.solargraph.setup({   #        capabilities = capabilities         })         lspconfig.html.setup({   #        capabilities = capabilities         })         lspconfig.lua_ls.setup({   #        capabilities = capabilities         })       5      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})   C      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})   C      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})   D      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})       end,     },   }5��            ,                      [              5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                 v       g��C    �                   �               5��                    G                       �      5�_�                    .       ����                                                                                                                                                                                                                                                                                                                                                             g���    �   -   /   H      ,        "tsserver", -- TypeScript/JavaScript5��    -                    {                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g��n     �         H            require("mason").setup()5��                         s                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g��n     �      
   H             require("mason").setup({})5��                         t                      �                         t                      �                        t                      �                          u                      �                         u                      �                          v                      �                         v                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             g��y     �         K            require("mason").setup({    �         K       5��                          u                      �                          u                      �                         t                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g��~     �         K              �         K    �         J            require("mason").setup({5��                        t                      �                         u                     �                          u                      �                         t                      �                        t                      �                         u                     �                         �                      �                         �                      �                         �                      �       
                                        �       	                  ~                      �                         }                      �                  
      }                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g���     �         U      
        },    �         U            },5��                          �                     �       
                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             g���     �         T      
        },    �         T       5��       
                  �                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             g���    �         S      
        },5��       
                 �              	       �                         �                    �               
          �      
              �       	                  �                     5�_�                    T        ����                                                                                                                                                                                                                                                                                                                                                             g�i,     �   S               5��    S                      �                     �    T                      �                     �    U                      �                     �    V                      �                     �    W                      �                     �    X                      �                     �    Y                      �                     �    Y                      �                     �    X                      �                     �    W                      �                     �    V                      �                     �    U                      �                     �    T                      �                     �    S                      �                     5�_�                     #       ����                                                                                                                                                                                                                                                                                                                                                             g�i:    �   "   $   T          },5��    "                     	                     �    "                     	                     5��