-- Editing plugins
return {
  -- Align text interactively
  {
    "echasnovski/mini.align",
    version = false,
    config = function()
      require("mini.align").setup()
    end,
  },

  -- Comment/uncomment lines
  {
    "echasnovski/mini.comment",
    version = false,
    config = function()
      require("mini.comment").setup()
    end,
  },

  -- Auto-insert pairs
  {
    "echasnovski/mini.pairs",
    version = false,
    config = function()
      require("mini.pairs").setup()
    end,
  },

  -- Surround text objects
  {
    "tpope/vim-surround",
  },
}

