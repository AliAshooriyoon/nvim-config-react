local packer_exists, packer = pcall(require, 'packer')
if not packer_exists then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function()
  local use = packer.use
  use 'wbthomason/packer.nvim' -- Packer itself

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File Icons

  use {
    'glepnir/lspsaga.nvim',
    branch = 'main',
    config = function()
      require('lspsaga').setup({})
    end,
    requires = {
      { 'nvim-tree/nvim-web-devicons' },    -- Optional for icons
      { 'nvim-treesitter/nvim-treesitter' } -- Optional for better syntax
    }
  }

  use 'hoob3rt/lualine.nvim'  -- Statusline
  use 'L3MON4D3/LuaSnip'      -- Snippets
  use 'onsails/lspkind-nvim'  -- VsCode-like pictograms
  use 'hrsh7th/cmp-buffer'    -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'  -- nvim-cmp source for Neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'      -- Completion
  use 'neovim/nvim-lspconfig' -- LSP

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- Use nvim as a Language server to inject LSP diagnostic, code actions, and more... via lua
  use 'MunifTanjim/prettier.nvim' --Prettier Plugin for nvim 

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
end)
