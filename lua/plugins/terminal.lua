return {
  {
    "willothy/wezterm.nvim",
    config = true,
    cmd = "WeztermSpawn",
    keys = {
      {
        "<leader>tt",
        function()
          local cwd = vim.loop.cwd() -- TODO: migrate when neovim v0.10
          local args = { "cli", "spawn", "--cwd", cwd }
          local msg = "spawn " .. table.concat(args, " ")
          require("wezterm").exec(args, function(obj)
            ---@diagnostic disable-next-line: undefined-field
            if obj.code ~= 0 then
              vim.notify("Wezterm failed to " .. msg, vim.log.levels.ERROR, {
                title = "Wezterm",
              })
            end
          end)
        end,
        desc = "Open new terminal shell",
      },
      {
        "<leader>tv",
        function()
          require("wezterm").split_pane.horizontal({
            cwd = vim.loop.cwd(),
          })
        end,
        desc = "Split vertically new terminal shell",
      },
      {
        "<leader>ts",
        function()
          require("wezterm").split_pane.vertical({
            cwd = vim.loop.cwd(),
          })
        end,
        desc = "Split horizontally new terminal shell",
      },
    },
  },
}
