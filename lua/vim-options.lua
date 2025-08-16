vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.background = "light"
vim.opt.swapfile = false
vim.wo.number = true

vim.g.mapleader = " "

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

--vim.keymap.set("n", "<leader>l", function()
--  vim.cmd("wincmd l")
--end, { noremap = true, silent = true })

--vim.keymap.set("n", "<leader>h", function()
--  vim.cmd("wincmd h")
--end, { noremap = true, silent = true })

