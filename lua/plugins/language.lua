return {
  --- MARDKOWN
  { "iamcco/markdown-preview.nvim", enabled = false },
  {
    "oxechicao/markdown-preview.nvim",
    name = "oxe-markdown-preview",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "pnpm install && cd app && pnpm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      vim.filetype.add({
        extension = {
          tera = "html",
        },
        filename = {
          ["template.html"] = "html",
        },
        pattern = {
          [".*%.html%.tera"] = "html",
          [".*%.tera"] = "html",
          [".*%.html"] = "html",
        },
      })
    end,
  },
  { "nvim-tree/nvim-web-devicons" },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      render_modes = true,
    },
    config = function(_, opts)
      require("render-markdown").setup({
        render_modes = true,
      })
    end,
  },
}
