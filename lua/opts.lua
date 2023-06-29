--[[ opts.lua ]]
local o = vim.o
local bo = vim.bo
local wo = vim.wo

o.autowrite = true
o.confirm = true
o.cursorline = true
o.colorcolumn = '80'           -- str:  Show col for max line length
o.number = true                -- bool: Show line numbers
o.relativenumber = true        -- bool: Show relative line numbers
o.scrolloff = 4                -- int:  Min num lines of context
o.signcolumn = 'yes'           -- str:  Show the sign column
o.backup = false
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true
o.undolevels = 10000
o.spelllang = 'en'
o.wrap = false
o.mouse = 'a'
o.showmode = false
bo.autoindent = true
bo.smartindent = true
o.encoding = 'utf8'            -- str:  String encoding to use
o.fileencoding = 'utf8'        -- str:  File encoding to use
o.syntax = 'on'                -- str:  Allow syntax highlighting
o.termguicolors = true         -- bool: If term supports ui color then enable
o.ignorecase = true            -- bool: Ignore case in search patterns
o.smartcase = true             -- bool: Override ignorecase if search contains capitals
o.incsearch = true             -- bool: Use incremental search
o.hlsearch = false             -- bool: Highlight search matches
o.expandtab = true             -- bool: Use spaces instead of tabs
o.shiftwidth = 4               -- num:  Size of an indent
o.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
o.tabstop = 4                  -- num:  Number of spaces tabs count for
o.splitright = true            -- bool: Place new window to right of current one
o.splitbelow = true            -- bool: Place new window below the current one

