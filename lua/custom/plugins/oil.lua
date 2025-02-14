return {
  {
    'stevearc/oil.nvim',
    opts = {
      -- default_file_explorer = true,
      -- view_options = {
      --   show_hidden = true,
      -- },
    },
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
          show_hidden = true,
          is_always_hidden = function(name, _)
            return name == '..' or name == '.git'
          end,
        },
      }
    end,
    -- Optional dependencies
    dependencies = { 'echasnovski/mini.icons' },
  },
}
