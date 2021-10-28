-- Import lspconfig
local lspconfig = require 'lspconfig'

-- Get a ClientCapabilities object that is passed to LSP servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Variable holding the path of LSP servers
local nix = '/home/' .. vim.fn.expand('$USER') .. '/.nix-profile'
local nix_bin = nix .. '/bin'

-- sumneko: Lua
local sumneko_root_path = nix .. '/extras'
local sumneko_binary = nix_bin .. '/lua-language-server'
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
lspconfig.sumneko_lua.setup({
  cmd = {sumneko_binary, '-E', sumneko_root_path .. '/main.lua'},
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        verison = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        useGitIgnore = true,
      },
      telemetry = {
        enable = false,
      }
    }
  }
})

-- pyright: Python
local pyright_binary = nix_bin .. '/pyright-langserver'
lspconfig.pyright.setup({
  cmd = {pyright_binary, '--stdio'},
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      },
      venvPath = ".venv"
    }
  }
})

-- vscode-language-server: JSON
local jsonls_binary = nix_bin .. '/vscode-json-languageserver'
lspconfig.jsonls.setup({
  cmd = {jsonls_binary, '--stdio'},
  capabilities = capabilities,
})

-- vscode-language-server: HTML
local htmlls_binary = nix_bin .. '/html-languageserver'
lspconfig.html.setup({
  cmd = {htmlls_binary, '--stdio'},
  capabilities = capabilities,
})

-- vscode-language-server: CSS
local cssls_binary = nix_bin .. '/css-languageserver'
lspconfig.cssls.setup({
  cmd = {cssls_binary, '--stdio'},
  capabilities = capabilities,
})

-- clangd: C, C++
local clangd_binary = '/usr/bin/clangd'
lspconfig.clangd.setup({
  cmd = {clangd_binary, '--background-index'},
  capabilities = capabilities
})

-- tsserver: Javascript and Typescript
local tsserver_binary = nix_bin .. '/typescript-language-server'
lspconfig.tsserver.setup({
  cmd = {tsserver_binary, '--stdio'}
})

-- gopls: Golang
local gopls_binary = nix_bin .. '/gopls'
lspconfig.gopls.setup({
  cmd = {gopls_binary},
  capabilities = capabilities
})

-- rust-analyzer: Rust
local rust_analyzer_binary = nix_bin .. '/rust-analyzer'
lspconfig.rust_analyzer.setup({
  cmd = {rust_analyzer_binary},
  capabilities = capabilities
})

-- terrafromls: Terraform
local terraformls_binary = nix_bin .. '/terraform-ls'
lspconfig.terraformls.setup({
  cmd = {terraformls_binary, 'serve'},
  filetypes = {'terraform', '.tf'}
})

local lspkind = require 'lspkind'
lspkind.init()

local luasnip = require 'luasnip'

local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
        luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
    keyword_length = 2
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = lspkind.presets.default[vim_item.kind]  .. ' ' .. vim_item.kind
      vim_item.menu = ({
        buffer = '[Buffer]',
        nvim_lsp = '[LSP]',
      })[entry.source.name]
      return vim_item
    end
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    }),
    ['<Esc>'] = cmp.mapping.close(),
  },
  sources = {
    {name = 'nvim_lsp'}
  },
}

local autopairs_cmp = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', autopairs_cmp.on_confirm_done())

local lsp_signature = require 'lsp_signature'
lsp_signature.setup({
  bind = true,
})

local autopairs = require('nvim-autopairs')
autopairs.setup()
