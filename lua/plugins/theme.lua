return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = true,
    opts = {
      transparent_background = false,
    }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
