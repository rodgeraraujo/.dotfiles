-- Miscellaneous plugins
return {
  -- Color highlighter
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        user_default_options = {
          names = false,
        },
      })
    end,
  },

  -- Readline bindings
  {
    "tpope/vim-rsi",
  },

  -- Bracket mappings
  {
    "tpope/vim-unimpaired",
  },
}

