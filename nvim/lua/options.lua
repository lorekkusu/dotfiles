require "nvchad.options"
local lspconfig = require "nvchad.configs.lspconfig"

local o = vim.o
local g = vim.g

o.conceallevel = 1

g.rustaceanvim = {
  tools = {},
  server = {
    on_attach = lspconfig.on_attach,
    on_init = lspconfig.on_init,
    capabilities = lspconfig.on_capabilities,
    default_settings = {
      ["rust-analyzer"] = {
        check = {
          command = "clippy",
        },
      },
    },
  },
  dap = {
    autoload_configurations = true,
  },
}
