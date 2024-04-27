local options = {
  formatters_by_ft = {
    rust = { "rustfmt" },

    lua = { "stylua" },
    go = { "goimports" },
    python = { "isort", "black" },
    javascript = { "prettier" },
    typescript = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
