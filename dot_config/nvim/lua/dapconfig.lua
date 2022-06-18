local dap = require 'dap'
local dapui = require 'dapui'

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode-10',
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  }
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

dap.adapters.python = {
  type = 'executable',
  command = 'python',
  args = {'-m', 'debugpy.adapter'}
}

dap.configurations.python = {
  {
    type = 'python',
    name = 'Launch',
    request = 'launch',
    program = '${file}',
    pythonPath = function()
      return vim.fn.getcwd() .. '/.venv/bin/python'
    end
  }
}

dapui.setup({
  icons = { expanded = '▾', collapsed = '▸' },
  mappings = {
    expand = { '<CR>', '<2-LeftMouse>' },
    open = 'o',
    remove = 'd',
    edit = 'e',
    repl = 'r',
  },
  layouts = {
    {
      elements = {
        {
          id = 'scopes',
          size = 0.25,
        },
        { id = 'breakpoints', size = 0.25 },
        { id = 'stacks', size = 0.25 },
        { id = 'watches', size = 00.25 },
      },
      size = 40,
      position = 'left',
    },
    {
      elements = { 'repl' },
      size = 10,
      position = 'bottom',
    }
  },
  floating = {
    max_height = nil,
    max_width = nil,
    mappings = {
      close = { 'q', '<Esc>' },
    },
  },
  windows = { indent = 1 },
})
