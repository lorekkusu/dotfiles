local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  -- Lua
  -- "lua_ls", -- Disabled (use nvchad)

  -- Rust
  -- "rust_analyzer", -- Disabled (configured by mrcjkb/rustaceanvim)

  -- Go
  "gopls",

  -- Python
  "pyright",

  -- JavaScript & TypeScript
  "tsserver",
  "tailwindcss",
  "svelte",
  -- "eslint", -- Disabled (manually setup)

  -- Terraform
  "terraformls",

  -- Yaml
  "yamlls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.eslint.setup {
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
  on_init = on_init,
  capabilities = capabilities,
}
