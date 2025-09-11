return {
  -- nix, java language
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "nix", "java" } },
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
        gopls = {},
        marksman = {},
      },
    },
  },
}
