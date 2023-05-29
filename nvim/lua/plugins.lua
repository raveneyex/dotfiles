return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'            -- Packer
  use 'williamboman/mason.nvim'           -- Mason
  use 'williamboman/mason-lspconfig.nvim' -- LSP for Mason
  use 'neovim/nvim-lspconfig'             -- LSP General utils
  -- Code Completion Plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/vim-vsnip'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  -- File Explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  -- Syntax Highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  -- Styles
  use 'Mofiqul/dracula.nvim'
  -- File Finder
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { { "nvim-telescope/telescope.nvim", tag = "0.1.0" }, { "nvim-lua/plenary.nvim" } }
  }
  -- Linter
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  -- LSP UI
  use 'glepnir/lspsaga.nvim'
end)
