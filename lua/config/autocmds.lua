-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("tangtang_" .. name, { clear = true })
end

if vim.env.ZELLIJ ~= nil then
  vim.fn.system({ "zellij", "action", "switch-mode", "locked" })
  vim.api.nvim_create_autocmd("VimLeave", {
    group = augroup("zellij_leave"),
    callback = function()
      vim.fn.system({ "zellij", "action", "switch-mode", "normal" })
    end,
  })
end
