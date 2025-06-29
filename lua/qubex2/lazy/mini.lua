return {
  -- mini.nvim
  {
    'echasnovski/mini.nvim',
    dependencies = {
      -- 'echasnovski/mini'
    },
    version = false,
    config = function()
      require('mini.icons').setup({})
      require('mini.diff').setup({})
      require('mini.ai').setup({})
      require('mini.trailspace').setup({})
    end
  },
}
