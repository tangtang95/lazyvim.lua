return {
  {
    "willothy/wezterm.nvim",
    config = true,
    cmd = "WeztermSpawn",
    keys = {
      {
        "<leader>wt",
        function()
          require("wezterm").spawn("cmd", {
            cwd = vim.loop.cwd(),
            args = {
              "/k", "%CMDER_ROOT%\\vendor\\init.bat"
            }
          })
        end,
        desc = "Open terminal",
      },
    },
  },
}
