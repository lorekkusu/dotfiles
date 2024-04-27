local options = {
  ensure_installed = {
    -- Lua
    "lua-language-server", --LSP
    "luacheck", --Linter
    "stylua", --Formatter

    -- Rust
    "rust-analyzer", --LSP
    -- "clippy", -- Linter (use cargo)
    -- "rustfmt", --Formatter (use cargo)

    -- Go
    "gopls", --LSP
    "golangci-lint", --Linter
    "goimports", --Formatter

    -- Python
    "pyright", --LSP
    "flake8", --Linter
    "isort", --Formatter
    "black", --Formatter

    -- JavaScript & TypeScript
    "typescript-language-server", --LSP
    "tailwindcss-language-server", --LSP
    "eslint-lsp", -- Linter
    "prettier", -- Formatter
  },
}

return options
