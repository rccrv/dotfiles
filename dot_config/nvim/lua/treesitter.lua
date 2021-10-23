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
  }
}
