local options = {
  ensure_installed = {
    -- Lua
    "lua-language-server", --LSP
    "luacheck", --Linter
    "stylua", --Formatter

    -- Rust
    "rust-analyzer", --LSP
    -- "clippy", --Linter (use cargo)
    -- "rustfmt", --Formatter (use cargo)
    "codelldb", --DAP

    -- Go
    "gopls", --LSP
    "golangci-lint", --Linter
    "goimports", --Formatter
    "delve", --DAP

    -- Python
    "pyright", --LSP
    "flake8", --Linter
    "isort", --Formatter
    "black", --Formatter
    "debugpy", --DAP

    -- JavaScript & TypeScript
    "typescript-language-server", --LSP
    "tailwindcss-language-server", --LSP
    "eslint-lsp", --Linter
    "prettier", --Formatter

    -- Terraform
    "terraform-ls", --LSP
    "tflint", --Linter
    -- "terraform_fmt", --Formatter (use cli)

    -- Yaml
    "yaml-language-server", --LSP
    "yamllint", --Linter
    "yamlfmt", --Formatter
    "yamlfix", --Formatter
  },
}

return options
