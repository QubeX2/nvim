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

require('config.whichkey-config')
require('config.lualine-config')
require('config.nvimtree-config')
require('config.telescope-config')
require('config.alpha-config')
require('config.treesitter-config')
require('config.lsp-config')
require('config.autopairs-config')
