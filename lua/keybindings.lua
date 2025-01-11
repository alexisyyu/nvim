vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- split windows
vim.api.nvim_set_keymap("n", "<leader>sv", ":vsplit<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>sh", ":split<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>sc", ":close<CR>", opts)

-- vim.api.nvim_set_keymap("n", "<C-h>", "<C_w>h", opts)
-- vim.api.nvim_set_keymap("n", "<C-j>", "<C_w>j", opts)
-- vim.api.nvim_set_keymap("n", "<C-k>", "<C_w>k", opts)
-- vim.api.nvim_set_keymap("n", "<C-l>", "<C_w>l", opts)

vim.api.nvim_set_keymap("n", "<leader>kk", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>jj", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ll", ":vertical resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>hh", ":vertical resize -2<CR>", opts)

-- system clipboard
vim.api.nvim_set_keymap("n", "<leader>y", "\"+y", opts)
vim.api.nvim_set_keymap("n", "<leader>yy", "\"+yy", opts)

