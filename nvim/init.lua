
local nvim = vim.opt

nvim.tabstop = 2
nvim.shiftwidth = 2
nvim.softtabstop = 2
nvim.expandtab = true
nvim.smarttab = true
nvim.termguicolors = true
nvim.number = true
nvim.relativenumber = true
nvim.encoding = "utf-8"
--nvim.clipboard = "unnamedplus"
vim.cmd [[ colorscheme slate ]]

vim.cmd [[ vnoremap J :m '>+1<cr>gv=gv ]]
vim.cmd [[ vnoremap K :m '<-2<cr>gv=gv ]]
vim.cmd [[ inoremap jk <esc> ]]
vim.cmd [[ inoremap kj <esc> ]]

