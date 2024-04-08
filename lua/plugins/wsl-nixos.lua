if vim.fn.has("wsl") == 1 then
  return {
    {
      "williamboman/mason.nvim",
      enabled = false,
    }
  }
else
  return { }
end
