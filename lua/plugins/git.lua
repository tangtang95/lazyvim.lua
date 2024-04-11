return {
  { "tpope/vim-fugitive", event = "VeryLazy" },
  {
    "linrongbin16/gitlinker.nvim",
    cmd = "GitLink",
    config = function()
      require("gitlinker").setup({
        router = {
          repo = {
            ["^github%.com"] = "https://github.com/" .. "{_A.ORG}/" .. "{_A.REPO}",
          },
        },
      })
    end,
    keys = {
      -- Quicker Shortcut
      { "<leader>go", "<cmd>GitLink! repo<CR>", mode = { "n", "v" }, desc = "GitLink: open git browse repo link" },

      { "<leader>gll", "<cmd>GitLink<CR>", mode = { "n", "v" }, desc = "GitLink: yank git browse link" },
      { "<leader>glL", "<cmd>GitLink!<CR>", mode = { "n", "v" }, desc = "GitLink: open git browse link" },
      { "<leader>glb", "<cmd>GitLink blame<CR>", mode = { "n", "v" }, desc = "GitLink: yank git blame link" },
      { "<leader>glB", "<cmd>GitLink! blame<CR>", mode = { "n", "v" }, desc = "GitLink: open git blame link" },
      {
        "<leader>gld",
        "<cmd>GitLink default_branch<CR>",
        mode = { "n", "v" },
        desc = "GitLink: yank git default branch link",
      },
      {
        "<leader>glD",
        "<cmd>GitLink! default_branch<CR>",
        mode = { "n", "v" },
        desc = "GitLink: open git default branch link",
      },
    },
  },
}
