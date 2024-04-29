local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  -- Lua
  -- "lua_ls", -- Disabled (use nvchad)

  -- Rust
  -- "rust_analyzer", -- Disabled (manually setup (x) -> configured by mrcjkb/rustaceanvim)

  -- Go
  "gopls",

  -- Python
  "pyright",

  -- JavaScript & TypeScript
  "tsserver",
  "tailwindcss",

  -- Terraform
  "terraformls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- lspconfig.rust_analyzer.setup {
--   settings = {
--     ["rust-analyzer"] = {
--       check = {
--         command = "clippy", -- default: check
--       },
--     },
--   },
-- }
