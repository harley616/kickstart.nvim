return {
  'jiaoshijie/undotree',
  dependencies = {
    'nvim-lua/plenary.nvim', -- A common dependency for many Lua plugins
  },
  config = function()
    require('undotree').setup {
      -- Your configuration options go here
      -- See the plugin's documentation for all options
      float_diff = true,
      layout = 'left_bottom',
      position = 'left',
      ignore_filetype = { 'undotree', 'undotreeDiff', 'qf', 'TelescopePrompt', 'spectre_panel' },
    }
  end,
  keys = {
    -- Keymapping to toggle the undotree window
    { '<leader>u', "<cmd>lua require('undotree').toggle()<cr>" },
  },
}
