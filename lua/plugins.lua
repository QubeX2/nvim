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
    },
    -- Colorscheme
    {
        'folke/tokyonight.nvim',
        lay = false,
        priority = 1000,
        opts = {},
    },
    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },
    -- Hop
    {
        'phaazon/hop.nvim',
        lazy = true,
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
        dependencies = 'nvim-lua/plenary.nvim',
    },
    -- Alpha
    {
        'goolord/alpha-nvim',
        lazy = true,
    },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
    },
    -- Language Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
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

}
