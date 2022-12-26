local set = vim.opt

-- tabs settings
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smarttab = true

set.ignorecase = true

set.relativenumber = true
set.number = true -- for current line number

vim.cmd("set noeol")
-- set.binary = true -- do not add empty line at the end of the file

-- set leader key
-- to show cuurent leader :let mapleader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap("", "<leader>h", ":noh<Cr>", { silent = true })

-- import all plugins
require('plugins/nvim-tree')
require('plugins/toggleterm')
require('plugins/telescope')
require('plugins/nvim-commenter')
require('plugins/lspconfig')
require('plugins/nightfox')
require('plugins/autopairs')
require('plugins/treesitter')

set.termguicolors = true
vim.cmd("colorscheme nordfox")

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	
	use 'wbthomason/packer.nvim'

	use 'nvim-tree/nvim-web-devicons'

  use 'akinsho/bufferline.nvim'

  use "terrortylor/nvim-comment"

  use "EdenEast/nightfox.nvim"

	use 'nvim-lua/plenary.nvim'

  use 'nvim-telescope/telescope.nvim'

  use 'nvim-tree/nvim-web-devicons'

  use "akinsho/toggleterm.nvim"

  use 'nvim-tree/nvim-tree.lua'

  use 'nvim-treesitter/nvim-treesitter'

  use "windwp/nvim-autopairs"

  use 'neovim/nvim-lspconfig'
	
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)
