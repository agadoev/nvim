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
require('plugins/bufferline')
require('plugins/lsp-saga')
require('plugins/nvim-commenter')
require('plugins/lspconfig')
require('plugins/nightfox')
require('plugins/gitsigns')
require('plugins/autopairs')
require('plugins/cmp')

set.termguicolors = true
-- vim.cmd("colorscheme nightfox")

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Lsp Saga
  use({
      "glepnir/lspsaga.nvim",
      branch = "main",
  })

  -- Commenter
  use "terrortylor/nvim-comment"

  -- Colorscheme
  use "EdenEast/nightfox.nvim"

  -- Telescope
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

  -- -- Autoclose tags
  -- ["windwp/nvim-ts-autotag"] = { after = "nvim-treesitter" },

  -- -- Snippet collection
  -- ["rafamadriz/friendly-snippets"] = { opt = true },

  -- Snippet engine
  use "L3MON4D3/LuaSnip"

  -- Completion engine
  use "hrsh7th/nvim-cmp"

  -- Buffer completion source
  use "hrsh7th/cmp-buffer"

  -- Path completion source
  use "hrsh7th/cmp-path"

  -- LSP completion source
  use "hrsh7th/cmp-nvim-lsp"

  -- -- Snippet completion source
  -- ["saadparwaiz1/cmp_luasnip"] = {
  --   after = "nvim-cmp",
  --   config = function() astronvim.add_user_cmp_source "luasnip" end,
  -- },


  -- Autopairs
  use "windwp/nvim-autopairs"
  
  -- Gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }
  -- Nvim LSP Config
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

end)
