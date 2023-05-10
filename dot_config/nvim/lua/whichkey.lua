local wk = require('which-key')

wk.register({
  ['<leader>'] = {
    b = {
      name = "Buffers",
      j = {'<cmd>CybuNext<cr>', 'Next'},
      k = {'<cmd>CybuPrev<cr>', 'Next'}
    },
    c = {'<cmd>bdelete<cr>', 'Close Buffer'},
    d = {
      name = 'DAP',
      b = {'<cmd>lua require"dap".toggle_breakpoint()<cr>', 'Toggle Breakpoint'},
      c = {'<cmd>lua require"dap".continue()<cr>', 'Continue'},
      i = {'<cmd>lua require"dap".step_into()<cr>', 'Step Into'},
      o = {'<cmd>lua require"dap".step_out()<cr>', 'Step Out'},
      s = {'<cmd>lua require"dap".step_over()<cr>', 'Step Over'},
      t = {'<cmd>lua require("dapui").toggle()<cr>', 'Toggle UI'}
    },
    e = {'<cmd>NvimTreeToggle<cr>', 'Explorer'},
    f = {
      name = 'Fzf',
      f = {'<cmd>FzfLua files<cr>', 'Find Files'},
      g = {'<cmd>FzfLua live_grep<cr>', 'Live Grep'},
    },
    g = {
      name = 'Git',
      b = {'<cmd>FzfLua git_branches<cr>', 'Branches'},
      l = {'<cmd>Gitsigns blame_line<cr>', 'Blame Line'},
      L = {'<cmd>FzfLua git_commits<cr>', 'Log'},
      s = {'<cmd>FzfLua git_status<cr>', 'Status'},
    },
    i = {
      name = 'Installers',
      l = {'<cmd>Lazy<cr>', 'Lazy'},
      m = {'<cmd>Mason<cr>', 'Mason'},
    },
    l = {
      name = 'LSP',
      --a = {'<cmd>Lspsaga code_action<cr>', 'Code Action'},
      a = {'<cmd>FzfLua lsp_code_actions<cr>', 'Code Action'},
      d = {'<cmd>lua vim.lsp.buf.definition()<cr>', 'Go to Definition'},
      e = {'<cmd>lua vim.lsp.buf.declaration()<cr>', 'Go to Declaration'},
      f = {'<cmd>lua vim.lsp.buf.format({async = true})<cr>', 'Format Document'},
      g = {'<cmd>FzfLua lsp_document_diagnostics<cr>', 'Document Diagnostics'},
      h = {'<cmd>lua vim.lsp.buf.hover()<cr>', 'Hover'},
      i = {'<cmd>lua vim.lsp.buf.implementation()<cr>', 'Go to Implementation'},
      I = {'<cmd>LspInfo<cr>', 'LSP Info'},
      n = {'<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename'},
      N = {'<cmd>NullLsInfo<cr>', 'null-ls Info'},
      o = {'<cmd>AerialToggle<cr>', 'Outline'},
      p = {'<cmd>FzfLua lsp_definitions<cr>', 'Peek Definition'},
      r = {'<cmd>FzfLua lsp_references<cr>', 'References'},
      s = {'<cmd>lua vim.lsp.buf.signature_help()<cr>', 'Signature Help'},
      w = {'<cmd>FzfLua lsp_workspace_diagnostics<cr>', 'Workspace Diagnostics'},
      W = {'<cmd>FzfLua lsp_live_workspace_symbols<cr>', 'Workspace Symbol Search'},
    },
    q = {'<cmd>qa<cr>', 'Quit'},
    t = {'<cmd>Trouble<cr>', 'Trouble'},
    w = {'<cmd>w<cr>', 'Save'},
  }
})

