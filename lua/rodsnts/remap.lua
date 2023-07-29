vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>gr', ':Prettier<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gc', ':GenerateComponent<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>cp", ":Telescope command_palette<CR>")
vim.keymap.set("n", "<leader>t", ':term<CR>')
