vim.opt.termguicolors = true

require("bufferline").setup{
  options = {
    offsets = {
      { filetype = "NvimTree", text = "", padding = 1 },
      { filetype = "neo-tree", text = "", padding = 1 },
      { filetype = "Outline", text = "", padding = 1 },
    },
    close_command = close_func,
    right_mouse_command = close_func,
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    separator_style = "thin",
  }
}

vim.api.nvim_set_keymap("", "<S-l>", ":BufferLineCycleNext<Cr>", { silent = true })
vim.api.nvim_set_keymap("", "<S-h>", ":BufferLineCyclePrev<Cr>", { silent = true })
vim.api.nvim_set_keymap("", ">b", ":BufferLineMovePrev<Cr>", { silent = true })
vim.api.nvim_set_keymap("", "<b", ":BufferLineMovePrev<Cr>", { silent = true })
vim.api.nvim_set_keymap("", "<leader>x", ":bdelete<Cr>", { silent = true })

