return {
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    opts = {
      lsp = {
        enabled = true,
        on_attach = require("nvchad.configs.lspconfig").on_attach,
        actions = true,
        completion = true,
        hover = true,
      },
      popup = {
        autofocus = true,
      },
    },
    config = function(_, opts)
      require("crates").setup(opts)
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      return require "configs.mason"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require "configs.treesitter"
    end,
  },
}
