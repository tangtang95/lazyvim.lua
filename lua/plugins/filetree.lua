return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>e",
        "<CMD>Oil<CR>",
        desc = "Open Oil Explorer",
      },
    },
    config = function()
      require("oil").setup({
        delete_to_trash = true,
        keymaps = {
          ["<leader>e"] = "<Nop>",
          ["`"] = false,
          ["~"] = false,
          ["<C-e>"] = "actions.cd",
        },
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
