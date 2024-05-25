lvim.builtin.treesitter.ensure_installed = {
  "python",
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = 'ruff', filetypes = { 'python' } } }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "ruff", args = { "--fix" }, filetypes = { 'python' } } }

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    name = 'proselint'
  }
}

lvim.format_on_save.enabled = true
