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
    keys = {
      { "S", mode = { "x" }, false },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "2.x",
    event = "VeryLazy",
    config = true,
  },
}
