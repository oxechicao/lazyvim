return {
  {
    "rose-pine/neovim",
    priority = 1000,
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "moon",
        extend_background_behind_borders = true,
        enable = {
          terminal = true,
          legacy_hightlights = true,
          migrations = true,
        },
        styles = {
          transparency = true,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
