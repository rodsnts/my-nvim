local Popup = require("nui.popup")
local event = require("nui.utils.autocmd").event

local popup = Popup({
  enter = true,
  focusable = true,
  border = {
    style = "rounded",
  },
  position = "50%",
  size = {
    width = "80%",
    height = "60%",
  },
  buf_options = {
    modifiable = true,
    readonly = false,
  },
  bufnr = vim.api.nvim_create_buf(true, true),
})

-- mount/open the component
-- popup:mount()

-- unmount component when cursor leaves buffer
popup:on(event.BufLeave, function()
  popup:unmount()
end)
