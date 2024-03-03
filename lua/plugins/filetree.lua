return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "-",
        "<CMD>Oil<CR>",
        desc = "Open parent directory",
      },
    },
    opts = {
      delete_to_trash = true,
      keymaps = {
        ["`"] = false,
        ["~"] = false,
        ["<C-e>"] = "actions.cd",
      },
      view_options = {
        show_hidden = true,
      },
    },
  },
}
