
require('nvim_comment').setup()

vim.api.nvim_set_keymap("", "<leader>/", ":CommentToggle<Cr>", { silent = true })
vim.api.nvim_set_keymap("", "<leader>v/", ":'<,'>CommentToggle<Cr>", { silent = true })

