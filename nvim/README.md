# Neovim Configuration

This is a comprehensive Neovim configuration based on [nvim-from-scratch](https://github.com/ngscheurich/nvim-from-scratch).

## Installation

This configuration is part of the dotfiles setup. To use it:

```bash
# If using stow
cd ~/.dotfiles
stow nvim

# Or manually link
ln -s ~/.dotfiles/nvim ~/.config/nvim
```

## Requirements

- **Neovim 0.8.2 or higher**
- **fd** - Better file finding
- **ripgrep** - Fast grep alternative
- **Node.js** - For some LSP servers
- A Nerd Font (MesloLGS NF is included in this dotfiles repo)

Install fd and ripgrep on macOS:

```bash
brew install ripgrep fd
```

## First Launch

On first launch, Neovim will:

1. Bootstrap the lazy.nvim plugin manager
2. Install all configured plugins
3. Set up LSP servers via Mason

This may take a few minutes. Be patient!

## Structure

```
nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   ├── options.lua         # Neovim settings
│   │   ├── keymaps.lua         # Key mappings
│   │   ├── commands.lua        # Autocommands
│   │   └── abbrevs.lua         # Abbreviations
│   └── plugins/
│       ├── init.lua            # Plugin loader
│       ├── editing.lua         # Text editing plugins
│       ├── interface.lua       # UI plugins
│       ├── navigation.lua      # Navigation plugins
│       ├── lsp.lua             # LSP configuration
│       ├── completion.lua      # Completion setup
│       ├── treesitter.lua      # Treesitter config
│       ├── git.lua             # Git integration
│       └── misc.lua            # Other plugins
└── README.md
```

## Key Bindings

Leader key is `<Space>`

### General

- `<leader>w` - Save file
- `<leader>q` - Quit
- `<Esc>` - Clear search highlighting

### Window Management

- `<leader>sv` - Split vertically
- `<leader>sh` - Split horizontally
- `<leader>sx` - Close current split
- `<C-h/j/k/l>` - Navigate between splits

### File Explorer

- `<leader>e` - Toggle nvim-tree

### Telescope (Fuzzy Finder)

- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers
- `<leader>fh` - Help tags
- `<leader>fr` - Recent files

### LSP

- `gd` - Go to definition
- `gD` - Go to declaration
- `gi` - Go to implementation
- `gr` - Find references
- `K` - Hover documentation
- `<leader>lr` - Rename symbol
- `<leader>lc` - Code action
- `<leader>lf` - Format buffer

### Git

- `<leader>gg` - Git status
- `<leader>gs` - Stage hunk
- `<leader>gr` - Reset hunk
- `<leader>gp` - Preview hunk
- `<leader>gb` - Blame line
- `]c` / `[c` - Next/previous hunk

### Diagnostics

- `<leader>xx` - Toggle diagnostics list
- `<leader>xd` - Buffer diagnostics

## Plugins Included

### Editing

- **mini.align** - Align text interactively
- **mini.comment** - Comment/uncomment
- **mini.pairs** - Auto-insert pairs
- **vim-surround** - Surround text objects

### Interface

- **tokyonight.nvim** - Colorscheme
- **lualine.nvim** - Statusline
- **todo-comments.nvim** - Highlight TODO comments
- **which-key.nvim** - Key binding hints

### Navigation

- **nvim-tree.lua** - File explorer
- **telescope.nvim** - Fuzzy finder
- **leap.nvim** - Fast motion
- **trouble.nvim** - Diagnostics list

### Code Intelligence

- **nvim-lspconfig** - LSP configuration
- **mason.nvim** - LSP server installer
- **nvim-treesitter** - Syntax highlighting
- **neodev.nvim** - Neovim config development

### Completion

- **nvim-cmp** - Completion engine
- **LuaSnip** - Snippet engine

### Git

- **gitsigns.nvim** - Git signs in gutter
- **vim-fugitive** - Git commands

## Customization

This is meant to be a starting point! Feel free to:

- Modify key bindings in `lua/config/keymaps.lua`
- Adjust settings in `lua/config/options.lua`
- Add/remove plugins in `lua/plugins/`
- Change the colorscheme in `lua/plugins/interface.lua`

## Managing Plugins

- `:Lazy` - Open plugin manager UI
- `:Lazy update` - Update all plugins
- `:Lazy clean` - Remove unused plugins
- `:Lazy sync` - Update and clean

## LSP Servers

Manage LSP servers with Mason:

- `:Mason` - Open Mason UI
- `:MasonInstall <server>` - Install a server
- `:MasonUninstall <server>` - Uninstall a server

## Troubleshooting

### Plugins not loading

```vim
:Lazy sync
```

### LSP not working

```vim
:Mason
# Install the required language server
:LspInfo
# Check LSP status
```

### Treesitter issues

```vim
:TSUpdate
```

## Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [Original nvim-from-scratch](https://github.com/ngscheurich/nvim-from-scratch)
