return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        dim_inactive_windows = false,
        extend_background_behind_borders = true,
        disable_background = true, -- Makes background transparent
        disable_float_background = true, -- Makes floating windows transparent
        enable = {},
        palette = {},
        groups = {},
        highlight_groups = {},
        before_highlight = function() end,
        variant = 'main',
        dark_variant = 'main',
        styles = {
          italic = false,
          -- transparency = false,
        },
      }
      vim.cmd 'colorscheme rose-pine'
    end,
  },
}
