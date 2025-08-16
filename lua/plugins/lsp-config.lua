return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup() 
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "tailwindcss",
          "cssls",
          "html",
          "gopls",
          "templ",
          "jsonls",
          "yamlls",
          "dockerls",
          "marksman",
          "bashls",
          "intelephense",
        },
      })

      local servers = {
        "lua_ls",
        "ts_ls",
        "tailwindcss",
        "cssls",
        "html",
        "gopls",
        "templ",
        "jsonls",
        "yamlls",
        "dockerls",
        "marksman",
        "bashls",
        "intelephense",
      }

      for _, server in ipairs(servers) do
        if server == "ts_ls" then
          -- TS + Vue
          lspconfig.ts_ls.setup({
            capabilities = capabilities,
            filetypes = { "typescript", "javascript", "vue" },
            init_options = {
              plugins = {
                {
                  name = "@vue/typescript-plugin",
                  location = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
                  languages = { "vue" },
                },
              },
            },
          })
        else
          lspconfig[server].setup({
            capabilities = capabilities
          })
        end
      end

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
} 
