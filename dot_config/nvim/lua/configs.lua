local fzf = require 'fzf-lua'
fzf.setup({
  files = {
    cmd = 'fd -t f'
  },
  grep = {
    cmd = 'rg --vimgrep'
  }
})

local nvimtree = require 'nvim-tree'
nvimtree.setup({})
