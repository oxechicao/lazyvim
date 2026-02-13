--- Snack is the explorer
---@module "snacks"
---@type snacks.Config
local config = {
  scroll = { enabled = false },
  picker = {
    layouts = {
      sidebar = {
        layout = {
          position = "right",
        },
      },
    },
    layout = {
      layout = {
        resize = true,
      },
    },
  },
}

return {
  { "akinsho/bufferline.nvim", enabled = false }, -- tabs
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = config,
  },
}
