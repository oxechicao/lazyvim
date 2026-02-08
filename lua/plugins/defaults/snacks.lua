---@module "snacks"
---@type snacks.Config
local config = {
  scroll = { enabled = false },
  picker = {
    layout = {
      layout = {
        resize = true,
      },
    },
  },
}

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = config,
}
