local dap = require 'dap'
local dapui = require 'dapui'

local mason_path = '/home/ricardo/.local/share/nvim/mason/bin/'

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode',
  name = 'lldb'
}

dap.adapters.python = {
  type = 'executable',
  command = mason_path .. 'debugpy-adapter',
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

dapui.setup({})
