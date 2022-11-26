local builtin = require('telescope.builtin')

require('telescope').setup{
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95 },
  },
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>e', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
