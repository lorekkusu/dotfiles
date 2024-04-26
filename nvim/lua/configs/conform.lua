local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    rust = { "rustfmt" },
    go = { "goimports" },
    python = { "black" },
    javascript = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
