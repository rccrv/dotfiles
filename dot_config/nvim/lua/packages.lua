local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy = require 'lazy'
lazy.setup({
  'bluz71/vim-nightfly-guicolors',

  {
    'ghillb/cybu.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },

  {
    'anekos/hledger-vim',
    ft = {'ledger'},
  },

  {
    'hashivim/vim-terraform',
    ft = {'tf', 'terraform'}
  },

  'folke/which-key.nvim',

  'kyazdani42/nvim-tree.lua',

  'neovim/nvim-lspconfig',

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  'stevearc/aerial.nvim',

  'folke/trouble.nvim',

  'nvim-treesitter/nvim-treesitter',

  'HiPhish/rainbow-delimiters.nvim',

  'windwp/nvim-ts-autotag',

  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {}
  },

  'hrsh7th/nvim-cmp',

  'hrsh7th/cmp-nvim-lsp',

  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',

  'onsails/lspkind-nvim',

  'ray-x/lsp_signature.nvim',

  'windwp/nvim-autopairs',

  'folke/lua-dev.nvim',

  {
    'ibhagwan/fzf-lua',
    dependencies = {
      'vijaymarupudi/nvim-fzf'
    }
  },

  'jakewvincent/mkdnflow.nvim',

  'ellisonleao/glow.nvim',

  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio'
    }
  },

  {
    'lewis6991/gitsigns.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  },

  {
    'j-morano/buffer_manager.nvim',
  },

  'mhartington/formatter.nvim',

  'mfussenegger/nvim-lint',

  'folke/todo-comments.nvim',

  'xiyaowong/transparent.nvim',

  'keith/swift.vim',

  'udalov/kotlin-vim',
})
