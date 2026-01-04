return {
  'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup{
      defaults = require('telescope.themes').get_ivy {
      }
    }
    local builtin = require "telescope.builtin"
    local multi_grep = require "config.telescope.multi-grep"
    vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>sg', multi_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope [S]earch Vim [H]elp' })
    vim.keymap.set('n', '<leader>sn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
  end,
}
