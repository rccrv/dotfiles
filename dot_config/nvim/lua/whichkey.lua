local wk = require 'which-key'

wk.add({
  { "<leader>b", group = "Buffers" },
  { "<leader>bj", "<cmd>CybuNext<cr>", desc = "Next" },
  { "<leader>bk", "<cmd>CybuPrev<cr>", desc = "Previous" },
  { "<leader>bl", '<cmd>lua require("buffer_manager.ui").toggle_quick_menu()<cr>', desc = "List" },
  { "<leader>bo", "<cmd>only<cr>", desc = "Close other buffers" },
  { "<leader>bs", "<cmd>split<cr>", desc = "Horizontal split" },
  { "<leader>bv", "<cmd>vsplit<cr>", desc = "Vertical split" },
  { "<leader>c", "<cmd>bdelete<cr>", desc = "Close Buffer" },
  { "<leader>d", group = "DAP" },
  { "<leader>db", '<cmd>lua require("dap").toggle_breakpoint()<cr>', desc = "Toggle Breakpoint" },
  { "<leader>dc", '<cmd>lua require("dap").continue()<cr>', desc = "Continue" },
  { "<leader>di", '<cmd>lua require("dap").step_into()<cr>', desc = "Step Into" },
  { "<leader>do", '<cmd>lua require("dap").step_out()<cr>', desc = "Step Out" },
  { "<leader>ds", '<cmd>lua require("dap").step_over()<cr>', desc = "Step Over" },
  { "<leader>dt", '<cmd>lua require("dapui").toggle()<cr>', desc = "Toggle UI" },
  { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
  { "<leader>f", group = "Fzf" },
  { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
  { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
  { "<leader>g", group = "Git" },
  { "<leader>gL", "<cmd>FzfLua git_commits<cr>", desc = "Log" },
  { "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Branches" },
  { "<leader>gl", "<cmd>Gitsigns blame_line<cr>", desc = "Blame Line" },
  { "<leader>gs", "<cmd>FzfLua git_status<cr>", desc = "Status" },
  { "<leader>i", group = "Installers" },
  { "<leader>il", "<cmd>Lazy<cr>", desc = "Lazy" },
  { "<leader>im", "<cmd>Mason<cr>", desc = "Mason" },
  { "<leader>l", group = "LSP" },
  { "<leader>lI", "<cmd>LspInfo<cr>", desc = "LSP Info" },
  { "<leader>lW", "<cmd>FzfLua lsp_live_workspace_symbols<cr>", desc = "Workspace Symbol Search" },
  { "<leader>la", "<cmd>FzfLua lsp_code_actions<cr>", desc = "Code Action" },
  { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to Definition" },
  { "<leader>le", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Go to Declaration" },
  { "<leader>lf", "<cmd>Format<cr>", desc = "Format Document" },
  { "<leader>lg", "<cmd>FzfLua lsp_document_diagnostics<cr>", desc = "Document Diagnostics" },
  { "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover" },
  { "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Go to Implementation" },
  { "<leader>ln", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
  { "<leader>lo", "<cmd>AerialToggle<cr>", desc = "Outline" },
  { "<leader>lp", "<cmd>FzfLua lsp_definitions<cr>", desc = "Peek Definition" },
  { "<leader>lr", "<cmd>FzfLua lsp_references<cr>", desc = "References" },
  { "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Signature Help" },
  { "<leader>lw", "<cmd>FzfLua lsp_workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
  { "<leader>q", "<cmd>qa<cr>", desc = "Quit" },
  { "<leader>t", "<cmd>TroubleToggle<cr>", desc = "Trouble" },
  { "<leader>w", "<cmd>w<cr>", desc = "Save" },
})
