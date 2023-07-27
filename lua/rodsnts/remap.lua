vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<Leader>gc', ':GenerateComponent<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>p", ":Telescope command_palette<CR>")
vim.keymap.set("n", "<leader>t", ':term<CR>')
