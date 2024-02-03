return {
  -- TODO: improve lazy load of nvim-tree to save about 20 ms when not loading a file tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        "<leader>e",
        function()
          require("nvim-tree.api").tree.toggle()
        end,
        { desc = "Toggle NvimTree" },
      },
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  },
}
