local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'wbthomason/packer.nvim',

  'bluz71/vim-nightfly-guicolors',

  {
    'ghillb/cybu.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },

  {
    'ledger/vim-ledger',
    ft = {'ledger'},
  },

  {
    'hashivim/vim-terraform',
    ft = {'tf', 'terraform'}
  },

  'folke/which-key.nvim',

  'kyazdani42/nvim-tree.lua',

  'neovim/nvim-lspconfig',

  'williamboman/nvim-lsp-installer',

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  'stevearc/aerial.nvim',

  'nvim-treesitter/nvim-treesitter',

  'HiPhish/nvim-ts-rainbow2',

  'windwp/nvim-ts-autotag',

  'lukas-reineke/indent-blankline.nvim',

  'hrsh7th/nvim-cmp',

  'hrsh7th/cmp-nvim-lsp',

  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',

  'onsails/lspkind-nvim',

  'ray-x/lsp_signature.nvim',

  'windwp/nvim-autopairs',

  'folke/lua-dev.nvim',

  'jose-elias-alvarez/null-ls.nvim',

  {
    'ibhagwan/fzf-lua',
    dependencies = {
      'vijaymarupudi/nvim-fzf'
    }
  },

  'lewis6991/impatient.nvim',

  'jakewvincent/mkdnflow.nvim',

  'ellisonleao/glow.nvim',

  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap'
    }
  },

  {
    'lewis6991/gitsigns.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  },

  'folke/todo-comments.nvim',

  'xiyaowong/transparent.nvim',

  'keith/swift.vim',

  'udalov/kotlin-vim',
})
