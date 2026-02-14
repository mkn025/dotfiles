-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.fn.setreg("k", "diwhvep")
vim.fn.setreg("l", "di(hhxxp")

vim.g.autoformat = false




vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.wo.relativenumber = true



-- code runner
vim.keymap.set('n', '<leader>rr', ':RunCode<CR><C-w>p', { noremap = true, silent = true })


vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

