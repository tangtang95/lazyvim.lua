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
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- TODO: fix back to CTRL+Space once it works
        ["<c-c>"] = cmp.mapping.complete(),
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      incremental_selection = {
        -- TODO: fix back to CTRL+Space once it works
        keymaps = {
          init_selection = "<C-k>",
          node_incremental = "<C-k>",
          scope_incremental = false,
          node_decremental = "<C-j>",
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        ["<leader>gl"] = { name = "+links" },
      },
    },
  },
}
