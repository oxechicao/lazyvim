--- Snack is the explorer
---@module "snacks"
---@type snacks.Config
local config = {
  scroll = { enabled = false },
  picker = {
    files = {
      hidden = true,
      ignored = true,
    },
    layouts = {
      sidebar = {
        layout = {
          position = "left",
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
  { "3rd/image.nvim", build = false, opts = { processor = "magick_cli" } },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = config,
  },
}
