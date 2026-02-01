-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- vim.o.wrap = true
vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { desc = 'Go to directories' })
return {
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      -- Optional: disable default bindings if you want custom ones
      vim.g.codeium_disable_bindings = 1
      -- Custom keymaps (optional)
      vim.keymap.set('i', '<C-g>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true })
      vim.keymap.set('i', '<C-;>', function()
        return vim.fn['codeium#CycleCompletions'](1)
      end, { expr = true })
      vim.keymap.set('i', '<C-,>', function()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, { expr = true })
      vim.keymap.set('i', '<C-x>', function()
        return vim.fn['codeium#Clear']()
      end, { expr = true })
    end,
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
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
