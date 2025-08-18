return {
  -- nix language
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "nix" } },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        nix = { "alejandra" },
      },
    },
  },
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
        marksman = {},
      },
    },
  },
}
