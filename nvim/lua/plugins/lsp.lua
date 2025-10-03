-- LSP plugins
return {
  -- Mason for installing LSP servers
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Bridge between mason and lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "jsonls",
          "html",
          "cssls",
        },
        automatic_installation = true,
      })
    end,
  },

  -- Neovim config development
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup()
    end,
  },

  -- LSP configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "folke/neodev.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Setup handlers
      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true }

        -- Keybindings
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<leader>lk", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>lf", function()
          vim.lsp.buf.format({ async = true })
        end, opts)
      end

      -- Configure lua_ls for Neovim config
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })

      -- Setup other servers
      local servers = { "tsserver", "jsonls", "html", "cssls" }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end
    end,
  },

  -- Language packs
  {
    "sheerun/vim-polyglot",
  },
}

