return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>sM", false },
    },
    dependencies = {
      -- workspaces
      {
        "natecraddock/workspaces.nvim",
        event = "VeryLazy",
        config = function()
          require("workspaces").setup({
            hooks = {
              open = { "Telescope find_files" },
            },
          })
          require("lazyvim.util").on_load("telescope.nvim", function()
            require("telescope").load_extension("workspaces")
          end)
        end,
        keys = {
          { "<leader>sp", "<Cmd>Telescope workspaces<CR>", desc = "Projects" },
        },
      },
    },
  },
}
