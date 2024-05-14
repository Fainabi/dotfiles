-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- emacs keymap
map("i", "<C-n>", "<down>", { desc = "Move cursor down" })
map("i", "<C-p>", "<up>", { desc = "Move cursor up" })
map("i", "<C-e>", "<end>", { desc = "Go to line end" })
map("i", "<C-a>", "<home>", { desc = "Go to line start" })
map("i", "<A-f>", "<c-right>", { desc = "Go to next word" })
map("i", "<A-b>", "<c-left>", { desc = "Go to previous word" })
map("i", "<C-l>", "<esc>zza", { desc = "Align to center" })
map("i", "<C-f>", "<right>", { desc = "Go to next character" })
map("i", "<C-b>", "<left>", { desc = "Go to previous character" })

-- helix keymap
map({ "n", "x" }, "gh", "0", { desc = "Go to line start" })
map({ "n", "x" }, "gl", "$", { desc = "Go to line end" })
map({ "n", "x" }, "ge", "G", { desc = "Last line" })

-- map("n", "<space>k", "K", { desc = "LSP Hover" })
-- map("n", "<C-c>", "gcc", { desc = "Comment a line" })
