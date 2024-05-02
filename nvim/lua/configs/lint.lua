local lint = require "lint"

lint.linters.luacheck.args = { "--globals", "vim", "--formatter", "plain", "--codes", "--ranges", "-" }

lint.linters_by_ft = {
  lua = { "luacheck" },
  go = { "golangcilint" },
  python = { "flake8" },
  javascript = { "eslint" },
  typescript = { "eslint" },
  terraform = { "tflint" },
  yaml = { "yamllint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})
