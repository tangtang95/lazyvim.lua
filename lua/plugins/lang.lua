return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        nixd = {},
        zls = {
          settings = {
            zls = {
              enable_build_on_save = true,
            },
          },
        },
        gopls = {},
      },
    },
  },
}
