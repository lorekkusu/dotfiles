require "nvchad.mappings"

local map = vim.keymap.set

-- General
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Crates
local crates = require "crates"
map("n", "<leader>cf", crates.show_features_popup, { desc = "Popup crates features" })
