return {
  {
    "oxechicao/mandacaru-nv",
    priority = 1000,
    name = "mandacaru",
    config = function()
      require("mandacaru").setup({
        variant = "auto",
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = false, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },
      })
    end,
  },
  {
    "oxechicao/turnstyle-neovim",
    priority = 1000,
    name = "turnstyle",
    config = function()
      require("turnstyle").setup({
        variant = "main",
        dim_inactive_windows = false,
        extend_background_behind_borders = true,
        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },
        enable = {
          terminal = false,
          legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
          migrations = false, -- Handle deprecated options automatically
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "mandacaru",
    },
  },
}
