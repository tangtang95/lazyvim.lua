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
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- This <c-_> stands for my CTRL+7, but this mapping is for CTRL+Space.
        -- Make sure to map CTRL+Space to CTRL+7 in PowerToys or similar key mapping tool
        ["<c-_>"] = cmp.mapping.complete(),
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      incremental_selection = {
        -- This <c-_> stands for my CTRL+7, but this mapping is for CTRL+Space.
        -- Make sure to map CTRL+Space to CTRL+7 in PowerToys or similar key mapping tool
        keymaps = {
          init_selection = "<C-_>",
          node_incremental = "<C-_>",
        },
      },
    },
  },
}
