-- Treesitter plugins
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/playground",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "javascript",
          "typescript",
          "json",
          "html",
          "css",
          "markdown",
          "markdown_inline",
          "bash",
          "python",
        },
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        matchup = {
          enable = true,
        },
      })
    end,
  },

  -- Treesitter playground
  {
    "nvim-treesitter/playground",
    cmd = "TSPlaygroundToggle",
  },
}

