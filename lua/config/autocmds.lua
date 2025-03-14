-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})
-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "typescript", "prisma", "javascript", "rust", "graphql", "markdown", "env", "json", "tsx", "css" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    local project_root = vim.fn.finddir('.git/..', ';')
    if project_root ~= '' then
      vim.cmd('cd ' .. project_root)
    end
  end
})
