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

}
