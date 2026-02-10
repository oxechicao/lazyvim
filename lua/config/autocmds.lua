-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    -- Pequeno delay pode ser necessário se o plugin nativo ainda estiver processando
    vim.schedule(function()
      if vim.b.editorconfig then
        -- Sua lógica personalizada aqui
        local line_length = vim.b.editorconfig["max_line_length"]
        if line_length then
          vim.wo.colorcolumn = tostring(line_length)
        else
          vim.wo.colorcolumn = "80"
        end
      else
        vim.wo.colorcolumn = "80"
      end
    end)
  end,
})
