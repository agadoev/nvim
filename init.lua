local set = vim.opt

-- tabs settings
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smarttab = true

set.ignorecase = true

set.relativenumber = true

-- set leader key
-- to show cuurent leader :let mapleader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- import all plugins
require('plugins/nvim-tree')
require('plugins/toggleterm')
require('plugins/telescope')
require('plugins/nvim-commenter')
require('plugins/lspconfig')
require('nightfox').setup{}

set.termguicolors = true
vim.cmd("colorscheme nordfox")

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Commenter
  use "terrortylor/nvim-comment"

  -- Colorscheme
  use "EdenEast/nightfox.nvim"

  -- Telecope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm") end
  }

  -- Nvim Tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }

  -- Nvim LSP Config
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

end)
