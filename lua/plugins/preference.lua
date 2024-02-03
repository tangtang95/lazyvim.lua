return {
  -- Disable jumps in regular search
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        search = {
          enabled = false,
        },
      },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "2.x",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
}
