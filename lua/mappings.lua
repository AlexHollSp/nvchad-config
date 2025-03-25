require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.cmd("iabbrev lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit...")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
