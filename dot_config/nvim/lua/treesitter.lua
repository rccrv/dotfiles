local rainbow = require 'ts-rainbow'

require'nvim-treesitter.configs'.setup {
  ensure_instaled = 'maintained',
  highlight = {
    enable = true
  },
  indent = {
    enable = true,
    disable = {'python'}
  },
  autotag = {
    enable = true
  },

  rainbow = {
    enable = true,
    disable = {},
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    strategy = rainbow.strategy.global,
  }
}
