return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require('catppuccin').setup({});
    vim.cmd.colorscheme "catppuccin-latte"
  end
}

-- return {
-- 	'folke/tokyonight.nvim',
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- }
