vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use {'wbthomason/packer.nvim'}
  use {'dracula/vim', as = 'dracula'}
  use {
    'tanvirtin/monokai.nvim',
    -- require('monokai').setup{palette = require('monokai').ristretto}
  }

  use({
    'NTBBloodbath/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function()
      require('galaxyline.themes.eviline')
    end,
    -- some optional icons
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  })

  
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {'nvim-lua/plenary.nvim'} 
  use ({
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} },
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  })

  use ({
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    require('telescope').setup {
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",
        }
      }
    }
  })
  -- treesitter for highlighting and stuff 
  use {
    'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate',
  }
  -- colourfull brackets 
  use {'p00f/nvim-ts-rainbow'}

  -- autopairs
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- nvim file tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }


  -- which key
  use {
    "folke/which-key.nvim",
    config = function() 
      require('user-plugins.Which-Key.whichKey').setup()
    end,
  }
  
  -- cmp plugs
  use{'hrsh7th/nvim-cmp'} -- the completion plugin
  use{'hrsh7th/cmp-buffer'} -- buffer completion
  use{'hrsh7th/cmp-path'} -- path completion
  use{'hrsh7th/cmp-cmdline'} -- cmdline completion
  use{'hrsh7th/cmp-nvim-lsp'}
  use{'L3MON4D3/LuaSnip'}

  -- lsp
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer'}



  -- dashboard
  use {'glepnir/dashboard-nvim'}

  vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])


end)
