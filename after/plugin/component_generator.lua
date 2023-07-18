require('component_generator')

vim.cmd([[command! GenerateComponent lua require('component_generator.component_generator').open_text_box()]])
