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
    event = "VeryLazy",
    config = true,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require("telescope.actions")
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        mappings = {
          n = {
            ["<c-h>"] = actions.results_scrolling_left,
            ["<c-l>"] = actions.results_scrolling_right,
          },
          i = {
            ["<c-h>"] = actions.results_scrolling_left,
            ["<c-l>"] = actions.results_scrolling_right,
          },
        },
        path_display = {
          filename_first = {
            reverse_directories = false,
          },
        },
      })
    end,
  },
}
