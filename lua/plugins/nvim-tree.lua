require("nvim-tree").setup {
	view = {
		adaptive_size = false,
		centralize_selection = false,
		width = 30,
		hide_root_folder = false,
		side = "left",
		preserve_window_proportions = false,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		mappings = {
			custom_only = false,
			list = {
				-- user mappings go here
			},
		},
		float = {
			enable = false,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 30,
				height = 30,
				row = 1,
				col = 1,
			},
		},
	},
}

vim.api.nvim_set_keymap("", "<leader>et", ":NvimTreeToggle<Cr>", { silent = true })
vim.api.nvim_set_keymap("", "<leader>ef", ":NvimTreeFocus<Cr>", { silent = true })
