--[[ init.lua ]]
-- LEADER
-- These keybindings need to be first.
local exec = vim.api.nvim_exec
local g = vim.g
exec('language en_US', true)
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- IMPORTS
require('keys')	-- Keymaps
require('vars')	-- Variables
require('opts')	-- Options

-- BOOTSTRAP LAZY
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup('plugins')

require('whichkey-config')
require('bufferline-config')
require('lualine-config')
require('hop-config')
require('nvimtree-config')
require('telescope-config')
require('alpha-config')
require('treesitter-config')
require('lsp-config')
require('autopairs-config')

vim.cmd[[colorscheme tokyonight-night]]
