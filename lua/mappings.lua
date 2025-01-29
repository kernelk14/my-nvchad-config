require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map("n", "{", "<cmd>bp<cr>", { silent = true })
map("n", "}", "<cmd>bn<cr>", { silent = true })

map("n", ";d", "<cmd>bd<cr>", { silent = true })

map("n", ";ff", "<cmd>Telescope find_files<cr>", { silent = true })

map({"n", "v"}, '<C-/>', "gcc", { remap = true })
map("i", '<A-/>', "<esc>gcci", { remap = true })

-- This is for ST and other
map({"n", "v"}, '<C-_>', "gcc", { remap = true })
map("i", '<A-_>', "<esc>gcci", { remap = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
