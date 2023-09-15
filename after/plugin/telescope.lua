local builtin = require('telescope.builtin')

require('telescope').setup({
  extensions = {
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

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
