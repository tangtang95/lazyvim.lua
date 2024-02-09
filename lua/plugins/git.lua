local ssh_private_gitlab_domain = vim.env.SSH_PRIVATE_GITLAB_DOMAIN
local https_private_gitlab_domain = vim.env.HTTPS_PRIVATE_GITLAB_DOMAIN
if ssh_private_gitlab_domain ~= nil and https_private_gitlab_domain ~= nil then
  vim.g.fugitive_gitlab_domains = { [ssh_private_gitlab_domain] = https_private_gitlab_domain }
end

return {
  { "tpope/vim-fugitive", event = "VeryLazy" },
  { "tpope/vim-rhubarb", event = "VeryLazy" },
  { "shumphrey/fugitive-gitlab.vim", event = "VeryLazy" },
}
