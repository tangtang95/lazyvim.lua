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
        keymaps = {
          ["<leader>e"] = "<Nop>",
          ["`"] = false,
          ["~"] = false,
          ["<C-k>"] = "actions.cd",
          ["<C-w>"] = "actions.tcd",
        },
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
