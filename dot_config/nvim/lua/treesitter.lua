local tsconfigs = require'nvim-treesitter.configs'
tsconfigs.setup {
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
}
