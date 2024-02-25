local Util = require("lazyvim.util")

return {
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      local projects = {
        action = "Telescope workspaces",
        desc = " Projects",
        icon = " ",
        key = "p",
      }

      projects.desc = projects.desc .. string.rep(" ", 43 - #projects.desc)
      projects.key_format = "  %s"

      table.insert(opts.config.center, 3, projects)
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Replace first element of C block section by making sure that it is shown also when Lazy root is equal to cwd
      ---@diagnostic disable-next-line: assign-type-mismatch
      opts.sections.lualine_c[1] = Util.lualine.root_dir({ cwd = true })
    end,
  },
}
