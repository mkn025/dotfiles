-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Custom register macros
-- 'k' register: delete inner word, paste visually selected text, then paste
vim.fn.setreg("k", "diwhvep")
-- 'l' register: delete inside parentheses, move left twice, delete two characters, paste
vim.fn.setreg("l", "di(hhxxp")

-- Disable autoformatting on save
vim.g.autoformat = false




-- Tab settings: 4 spaces per tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Enable relative line numbers
vim.wo.relativenumber = true



-- Code runner keybinding
-- <leader>rr: Run code and return to previous window
vim.keymap.set('n', '<leader>rr', ':RunCode<CR><C-w>p', { noremap = true, silent = true })


-- Disable automatic comment continuation on new lines
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

