vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use "Djancyp/better-comments.nvim"

  use {
    'folke/todo-comments.nvim',
    requires = { "nvim-lua/plenary.nvim" },
  }

  use { 'folke/trouble.nvim' }

  use "lukas-reineke/indent-blankline.nvim"

  use { 'dstein64/vim-startuptime' }

  use { 'folke/noice.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }

  use { 'folke/tokyonight.nvim' }

  use { 'sindrets/diffview.nvim' }

  use { 'neovim/nvim-lspconfig' }

  use { 'jose-elias-alvarez/null-ls.nvim' }

  use { 'MunifTanjim/prettier.nvim' }

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons",     -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { "LinArcX/telescope-command-palette.nvim" }

  use { 'nyoom-engineering/oxocarbon.nvim' }

  use { 'rodsnts/component_generator' }

  use { 'rcarriga/nvim-notify' }

  use('nvim-treesitter/nvim-treesitter')

  use('nvim-treesitter/playground')

  use('norcalli/nvim-colorizer.lua')

  use('theprimeagen/harpoon')

  use { 'hrsh7th/cmp-buffer' }

  use { 'hrsh7th/cmp-path' }

  use('mbbill/undotree')

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use('tpope/vim-fugitive')

  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim'     -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }
end)
