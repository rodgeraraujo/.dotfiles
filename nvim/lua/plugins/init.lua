-- Main plugin configuration
-- Plugins are organized by category in separate files
return {
  -- Load all plugin specs from subdirectories
  { import = "plugins.editing" },
  { import = "plugins.interface" },
  { import = "plugins.navigation" },
  { import = "plugins.lsp" },
  { import = "plugins.completion" },
  { import = "plugins.treesitter" },
  { import = "plugins.git" },
  { import = "plugins.misc" },
}

