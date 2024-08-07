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
map("i", "<A-BS>", "<C-w>")

-- helix keymap
map({ "n", "x" }, "gh", "0", { desc = "Go to line start" })
map({ "n", "x" }, "gl", "$", { desc = "Go to line end" })
map({ "n", "x" }, "ge", "G", { desc = "Last line" })
map("n", "<leader>b<tab>", "<cmd>e #<cr>", { desc = "go to last buffer" })
-- map("n", "<space>k", "K", { desc = "LSP Hover" })
-- map("n", "<C-c>", "gcc", { desc = "Comment a line" })

-- neoscroll
local neoscroll = require("neoscroll")
neoscroll.setup({
  mappings = { -- Keys to be mapped to their corresponding default scrolling animation
    "<C-u>",
    "<C-d>",
    "<C-b>",
    "<C-f>",
    "<C-y>",
    "<C-e>",
    "zt",
    "zz",
    "zb",
  },
  hide_cursor = true, -- Hide cursor while scrolling
  stop_eof = true, -- Stop at <EOF> when scrolling downwards
  respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  easing = "quadratic", -- Default easing function
  pre_hook = nil, -- Function to run before the scrolling animation starts
  post_hook = nil, -- Function to run after the scrolling animation ends
  performance_mode = false, -- Disable "Performance Mode" on all buffers.
})

local keymap = {
  ["<C-u>"] = function()
    neoscroll.ctrl_u({ duration = 150 })
  end,
  ["<C-d>"] = function()
    neoscroll.ctrl_d({ duration = 150 })
  end,
  ["<C-b>"] = function()
    neoscroll.ctrl_b({ duration = 150 })
  end,
  ["<C-f>"] = function()
    neoscroll.ctrl_f({ duration = 150 })
  end,
  ["<C-y>"] = function()
    neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
  end,
  ["<C-e>"] = function()
    neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
  end,
}
local modes = { "n", "v", "x" }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end
