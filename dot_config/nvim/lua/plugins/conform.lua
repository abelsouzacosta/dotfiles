return {
  "stevearc/conform.nvim",
  -- LazyVim already integrates with conform.nvim
  event = { "BufWritePre" }, -- format before saving
  opts = {
    -- default formatting behavior
    default_format_opts = {
      timeout_ms = 3000,
      async = false,
      quiet = false,
      lsp_format = "fallback",
    },
    -- formatter by filetype
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      fish = { "fish_indent" },
      python = { "black" },
      go = { "goimports" },
    },
    -- any specific formatter configs
    formatters = {
      injected = { options = { ignore_errors = true } },
    },
  },
}
