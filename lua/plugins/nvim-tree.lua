require("nvim-tree").setup()

vim.api.nvim_set_keymap("", "<leader>n", ":NvimTreeToggle<Cr>", { silent = true })
