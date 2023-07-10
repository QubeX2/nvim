--[[ keys.lua ]]
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local g = vim.g

map('', '<space>', '<nop>', opts)
g.mapleader = ' '
g.maplocalleader = ' '

-- arrow keys --
map('', '<up>', '<nop>', opts)
map('', '<down>', '<nop>', opts)
map('', '<left>', '<nop>', opts)
map('', '<right>', '<nop>', opts)
map('i', '<up>', '<nop>', opts)
map('i', '<down>', '<nop>', opts)
map('i', '<left>', '<nop>', opts)
map('i', '<right>', '<nop>', opts)
-- inisert --
map('i', 'jk', '<esc>', opts)
map('i', 'kj', '<esc>', opts)
map('n', 'ö', ':', {})
map('v', 'ö', ':', {})
map('n', 'ä', '$', {})
map('v', 'ä', '$', {})
-- windows --
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-l>', '<c-w>l', opts)
-- resize windows
map('n', '<c-up>', ':resize -2<cr>', opts)
map('n', '<c-down>', ':resize +2<cr>', opts)
map('n', '<c-right>', ':vertical resize -2<cr>', opts)
map('n', '<c-left>', ':vertical resize +2<cr>', opts)
-- buffers
map('n', '<tab>', ':bn<cr>', opts)
map('n', '<s-tab>', ':bp<cr>', opts)
-- map('n', '<leader>h', ':nohlsearch<cr>', opts)
-- visual --
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

