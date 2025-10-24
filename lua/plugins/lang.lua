return {
  -- nix, java language
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "alejandra", "google-java-format" } },
  },
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
        java = { "google-java-format" },
      },
      formatters = {
        ["google-java-format"] = {
          args = { "--aosp", "--skip-sorting-imports", "-" }
        }
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
