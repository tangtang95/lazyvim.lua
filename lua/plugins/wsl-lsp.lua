if vim.fn.has("wsl") == 1 then
  return {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          lua_ls = {
            mason = false,
          },
          marksman = {
            mason = false,
          },
          rust_analyzer = {
            mason = false,
          },
        },
      },
    },
  }
else
  return { }
end
