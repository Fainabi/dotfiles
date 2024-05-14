-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("tokyonight").setup({
  day_brightness = 0.1,
})

vim.opt.guifont = "CaskaydiaCove NFM"
-- vim.cmd([[colorscheme tokyonight-day]])
vim.opt.background = "light"

