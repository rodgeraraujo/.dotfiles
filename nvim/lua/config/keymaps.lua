-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General keymaps
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- Clear search highlighting
keymap("n", "<Esc>", "<cmd>nohl<cr>", opts)

-- Window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })
keymap("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close current split" })

-- Navigate between splits
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize splits
keymap("n", "<C-Up>", "<cmd>resize +2<cr>", opts)
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", opts)
keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts)

-- Tab navigation
keymap("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "Open new tab" })
keymap("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close current tab" })
keymap("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go to next tab" })
keymap("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go to previous tab" })

-- Buffer navigation
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Move text up and down
keymap("v", "J", ":m '>+1<cr>gv=gv", opts)
keymap("v", "K", ":m '<-2<cr>gv=gv", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Keep cursor centered when scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

