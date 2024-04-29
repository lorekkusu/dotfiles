require "nvchad.mappings"

local map = vim.keymap.set

-- General
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Crates
local crates = require "crates"
map("n", "<leader>cf", crates.show_features_popup, { desc = "Popup crates features" })

-- DAP
map("n", "<F5>", require("dap").continue)
map("n", "<F10>", require("dap").step_over)
map("n", "<F11>", require("dap").step_into)
map("n", "<F12>", require("dap").step_out)
map("n", "<leader>b", require("dap").toggle_breakpoint)
