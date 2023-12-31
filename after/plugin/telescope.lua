local builtin = require('telescope.builtin')

require('telescope').setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    }
  },
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      }
    },
    command_palette = {
      { "File",
        { "Generate React component", ":GenerateComponent" },
        { "Save current file (C-s)",  ':w' },
        { "Save all files (C-A-s)",   ':wa' },
        { "Save and quit all (C-q)",  ':wqa' },
        { "File browser (C-i)",       ":lua require'telescope'.extensions.file_browser.file_browser()", 1 },
        { "Search word (A-w)",        ":lua require('telescope.builtin').live_grep()",                  1 },
        { "Git files (A-f)",          ":lua require('telescope.builtin').git_files()",                  1 },
        { "Files (C-f)",              ":lua require('telescope.builtin').find_files()",                 1 },
        { "Source file",              ":so" },
        { "Sync packages",            ":PackerSync" },
      },
      { "Edit",
        { "Format code", ":Prettier" }
      }
    }
  }
})

require('telescope').load_extension('command_palette')
require("telescope").load_extension('file_browser')

vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
