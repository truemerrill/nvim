local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Toggle explorer
keymap("n", "<Leader>n", ":NvimTreeToggle<CR>", opts)

-- Navigate windows
keymap("n", "<Leader><Up>", "<C-w>k", opts)
keymap("n", "<Leader><Down>", "<C-w>j", opts)
keymap("n", "<Leader><Left>", "<C-w>h", opts)
keymap("n", "<Leader><Right>", "<C-w>l", opts)
keymap("n", "<Leader>k", "<C-w>k", opts)
keymap("n", "<Leader>j", "<C-w>j", opts)
keymap("n", "<Leader>h", "<C-w>h", opts)
keymap("n", "<Leader>l", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)

-- Terminal
keymap("n", "<Leader><Tab>", ":ToggleTerm<CR>", opts)
keymap("t", "<Leader><Tab>", "<C-\\><C-n>", term_opts)

-- Resize windows
keymap("n", "<Tab>k", ":resize -2<CR>", opts)
keymap("n", "<Tab>j", ":resize +2<CR>", opts)
keymap("n", "<Tab>h", ":vertical resize -2<CR>", opts)
keymap("n", "<Tab>l", ":vertical resize +2<CR>", opts)

-- Telescope
keymap("n", "<Leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>t", ":Telescope live_grep<CR>", opts)

-- Neogen
keymap("n", "<Leader>d", ":lua require('neogen').generate()<CR>", opts)

