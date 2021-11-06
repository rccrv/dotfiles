return require('packer').startup(function()
  local use = require('packer').use
  -- packer: package manager
  use 'wbthomason/packer.nvim'
  -- nightfly: colorscheme
  use 'bluz71/vim-nightfly-guicolors'
  -- barbar: buffer bar
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  -- vim-ledger: to edit ledger files
  use {
    'ledger/vim-ledger',
    ft = {'ledger'},
  }
  use {
    'hashivim/vim-terraform',
    ft = {'tf', 'terraform'}
  }
  -- which-key: for creating key combinations menus
  use 'folke/which-key.nvim'
  -- nvim-tree-lua: file manager
  use {
    'kyazdani42/nvim-tree.lua',
  }
  -- nvim-lspconfig: lsp servers configurations
  use 'neovim/nvim-lspconfig'
  -- symbols-outline: list document symbols outline
  use {
    'simrat39/symbols-outline.nvim',
    cmd = {'SymbolsOutline', 'SymbolsOutlineOpen'}
  }
  -- nvim-treesitter: allows some beautiful stuff with text
  use 'nvim-treesitter/nvim-treesitter'
  -- nvim-ts-autotag: autoclose and autorename html tag
  use 'windwp/nvim-ts-autotag'
  -- indent-blankline: show a line indicating the indentation level
  use 'lukas-reineke/indent-blankline.nvim'
  -- nvim-cmp: completion plugin
  use 'hrsh7th/nvim-cmp'
  -- cmp-nvim-lsp: nvim-cmp source for neovim builtin LSP
  use 'hrsh7th/cmp-nvim-lsp'
  -- luasnip and cmp source for lua snip
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  -- lspkind-nvim: pictograms for lsp completion items
  use 'onsails/lspkind-nvim'
  -- lsp_signature.nvim: lsp signature hints
  use 'ray-x/lsp_signature.nvim'
  -- nvim-autopairs: Autopairs plugin for neovim
  use 'windwp/nvim-autopairs'
  -- lua-dev: lua completion to neovim functions
  use 'folke/lua-dev.nvim'
  -- fzf-lua: fuzzy file search and live grep
  use {
    'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf'
    }
  }
  -- impatient.nvim: faster neovim initialization
  use 'lewis6991/impatient.nvim'
  -- nvim-dap-ui: debug inside neovim using the DAP protocol
  use {
    'rcarriga/nvim-dap-ui',
    requires = {
      'mfussenegger/nvim-dap'
    }
  }
end)