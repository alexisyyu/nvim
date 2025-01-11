require('config.lazy')
require('config.mini_nvim')
require('config.render_markdown')
require('config.tree_sitter')
require('config.telescope')
require('config.cmp')
require('keybindings')


vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.background = 'dark'
vim.cmd.colorscheme('gruvbox')


