local Util = require("lazyvim.util")
local Snacks = require("snacks")

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local root_dir = function()
        local function get()
          local root = Util.root.get({ normalize = true })
          local name = vim.fs.basename(root)
          local path = string.gsub(vim.fn.expand("%:p"), "\\", "/") --[[@as string]]

          if path:find(root:gsub("^[a-zA-Z]:", ""), 1, true) then
            return name
          else
            return false
          end
        end

        return {
          function()
            return " " .. get()
          end,
          cond = function()
            return type(get()) == "string"
          end,
          color = {
            fg = Snacks.util.color("Special"),
          },
        }
      end

      -- Show LazyRoot dir only when root dir is parent dir of buffer path
      opts.sections.lualine_c[1] = root_dir()
    end,
  },
}
