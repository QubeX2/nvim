local wk = require("which-key")
wk.add({
  {
    mode = { 'n' },
    { '<leader>f', '<cmd>Telescope find_files<cr>', desc = 'Find File' },
    { '<leader>g', '<cmd>Telescope git_files<cr>', desc = 'Git Files' },
    { '<leader>b', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
    { '<leader>t', '<cmd>NvimTreeOpen<cr>', desc = 'NvimTreeToggle' },
    { '<leader>l', '<cmd>Lazy<cr>', desc = 'Lazy' },
    { '<leader>s', '<cmd>SymbolsOutline<cr>', desc = 'Symbols' },
{ '<leader>m', function() require('conform').format({ async = true }) end, desc = 'Format' },
  },
  {
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { "<leader>q", "<cmd>qa<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
    { "<leader>w", "<cmd>wa<cr>", desc = "Write" },
  }
})

vim.keymap.set({ 'n', 'v' }, 'ä', '$', {})
vim.keymap.set({ 'n', 'v' }, 'å', '^', {})
vim.keymap.set({ 'n', 'v' }, 'ö', ':', {})
vim.keymap.set({ 'n', 'v' }, '<', '<<', {})
vim.keymap.set({ 'n', 'v' }, '>', '>>', {})

vim.keymap.set({ 'n', 'v', 'i' }, '<down>', '<Nop>', {})
vim.keymap.set({ 'n', 'v', 'i' }, '<up>', '<Nop>', {})
vim.keymap.set({ 'n', 'v', 'i' }, '<left>', '<Nop>', {})
vim.keymap.set({ 'n', 'v', 'i' }, '<right>', '<Nop>', {})

vim.keymap.set({ 'n' }, '<C-h>', '<C-w>h', {})
vim.keymap.set({ 'n' }, '<C-j>', '<C-w>j', {})
vim.keymap.set({ 'n' }, '<C-k>', '<C-w>k', {})
vim.keymap.set({ 'n' }, '<C-l>', '<C-w>l', {})

-- local builtin = require('telescope.builtin', {})
-- vim.keymap.set({ 'n' }, '<leader>ff', builtin.find_files, {})
-- vim.keymap.set({ 'n' }, '<leader>fb', builtin.buffers, {})
-- vim.keymap.set({ 'n' }, '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set({ 'n' }, '<C-p>', builtin.git_files, {})
