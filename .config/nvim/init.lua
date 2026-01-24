-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.fn.setreg("k", "diwhvep")
vim.fn.setreg("l", "di(hhxxp")

vim.g.autoformat = false


vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Center cursor after moving down half-page"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Center cursor after moving down half-page"})


vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.wo.relativenumber = true


vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

