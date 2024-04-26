local options = {
  ensure_installed = {
    -- Formatter
    "stylua",
    "goimports",
    "black",
    "prettier",
    -- LSP
    "lua-language-server",
    "rust-analyzer",
    "gopls",
    "pyright",
    "typescript-language-server",
  },
}

return options
