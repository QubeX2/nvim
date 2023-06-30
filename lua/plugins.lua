return {
    -- Which-Key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
    },
    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            vim.opt.termguicolors = true

            require('bufferline').setup {
                options = {
                    hover = {
                        enabled = true,
                        delay = 150,
                        reveal = { 'close' }
                    }
                }
            } 
        end,
    },
    -- Colorscheme
    {
        'folke/tokyonight.nvim',
        lay = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd[[colorscheme tokyonight-night]]
        end
    },
    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },
    -- Hop
    {
        'phaazon/hop.nvim',
--         lazy = true,
        config = function()
            require('hop').setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5 }
            vim.api.nvim_set_keymap('', 'f', "<cmd>lua require('hop').hint_char2()<cr>", {})
            vim.api.nvim_set_keymap('n', 't', "<cmd>HopPattern<CR>", {noremap = true}) 
        end,
    },
    -- NvimTree
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = 'nvim-tree/nvim-web-devicons',
    },
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
            'nvim-telescope/telescope-fzy-native.nvim'
        },
    },
    -- Alpha
    {
        'goolord/alpha-nvim',
        lazy = true,
    },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    -- LSP 
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'mattn/emmet-vim'},
            {'roobert/tailwindcss-colorizer-cmp.nvim'},
            {'hrsh7th/vim-vsnip'},
            {'hrsh7th/cmp-vsnip'},
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },
    -- Auto Pairs
    {
        'windwp/nvim-autopairs',
    },
    -- Php Plugins
    'StanAngeloff/php.vim',
    'jwalton512/vim-blade',
    'noahfrederick/vim-laravel',
    'tpope/vim-projectionist',
    'noahfrederick/vim-composer',
    {
        'simrat39/symbols-outline.nvim',
        config = function()
            require('symbols-outline').setup()
        end,
    },
    -- Colorizer Color Codes
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end,
    }

}
