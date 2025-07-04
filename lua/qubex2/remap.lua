local wk = require("which-key")
wk.add({
  {
    mode = { 'n' },
    { '<leader>f', '<cmd>Telescope find_files<cr>', desc = 'Find File' },
    { '<leader>i', '<cmd>Telescope git_files<cr>', desc = 'Git Files' },
    { '<leader>g', '<cmd>Telescope live_grep<cr>', desc = 'Search String' },
    { '<leader>b', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
    { '<leader>t', '<cmd>NvimTreeToggle<cr>', desc = 'Nvim Tree' },
    { '<leader>x', '<cmd>bd<cr>', desc = 'Delete Buffer' },
    { '<leader>l', '<cmd>Lazy<cr>', desc = 'Lazy' },
    { '<leader>s', '<cmd>SymbolsOutline<cr>', desc = 'Symbols' },
    { '<leader>e', '<cmd>lua vim.diagnostic.open_float()<cr>', desc = 'Errors' },
    { '<leader>m', function() require('conform').format({ async = true }) end, desc = 'Format' },
  },
  {
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { '<leader>c', '<cmd>CodeCompanion<cr>', desc = 'Gemini' },
    { '<leader>h', '<cmd>CodeCompanionChat<cr>', desc = 'Gemini Chat' },
    { "<leader>q", "<cmd>qa<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
    { "<leader>w", "<cmd>wa<cr>", desc = "Write" },
    { "<leader>a", "<cmd>%bd|e#|bd#<cr>", desc = "Write" },
  }
})

-- In a keymaps.lua file or your main config

local dap = require('dap')
local dapui = require('dapui')

-- General debugging
vim.keymap.set('n', '<Leader>ds', function() dap.continue() end, { desc = 'DAP Start/Continue' })
vim.keymap.set('n', '<Leader>dx', function() dap.terminate() end, { desc = 'DAP Terminate' })
vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end, { desc = 'DAP Open REPL' })

-- Stepping
vim.keymap.set('n', '<Leader>do', function() dap.step_over() end, { desc = 'DAP Step Over' })
vim.keymap.set('n', '<Leader>di', function() dap.step_into() end, { desc = 'DAP Step Into' })
vim.keymap.set('n', '<Leader>du', function() dap.step_out() end, { desc = 'DAP Step Out' })

-- Breakpoints
vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end, { desc = 'DAP Toggle Breakpoint' })
vim.keymap.set('n', '<Leader>dB', function()
  dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end, { desc = 'DAP Set Conditional Breakpoint' })

-- UI
vim.keymap.set('n', '<Leader>dt', function() dapui.toggle() end, { desc = 'DAP Toggle UI' })

vim.keymap.set({ 'n', 'v' }, 'ä', '$', {})
vim.keymap.set({ 'n', 'v' }, 'å', '^', {})
vim.keymap.set({ 'n', 'v' }, 'ö', ':', {})
vim.keymap.set({ 'v' }, '<', '<gv', {})
vim.keymap.set({ 'v' }, '>', '>gv', {})
vim.keymap.set({ 'n' }, '<', '<<', {})
vim.keymap.set({ 'n' }, '>', '>>', {})
vim.keymap.set({ 'n' }, 'gd', '<cmd>Telescope lsp_definitions<cr>', {})

vim.keymap.set({ 'n', 'v', 'i' }, '<down>', '<Nop>', {})
vim.keymap.set({ 'n', 'v', 'i' }, '<up>', '<Nop>', {})
vim.keymap.set({ 'n', 'v', 'i' }, '<left>', '<Nop>', {})
vim.keymap.set({ 'n', 'v', 'i' }, '<right>', '<Nop>', {})
vim.keymap.set({ 'n' }, 'q', '<Nop>', {})
vim.keymap.set({ 'n' }, '<leader>r', 'q', {})

vim.keymap.set({ 'n' }, '<C-h>', '<C-w>h', {})
vim.keymap.set({ 'n' }, '<C-j>', '<C-w>j', {})
vim.keymap.set({ 'n' }, '<C-k>', '<C-w>k', {})
vim.keymap.set({ 'n' }, '<C-l>', '<C-w>l', {})
vim.keymap.set({ 'n', 'v' }, '<Tab>', '<cmd>bn<cr>', {})
vim.keymap.set({ 'n', 'v' }, '<S-Tab>', '<cmd>bp<cr>', {})

