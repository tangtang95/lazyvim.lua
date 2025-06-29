local isNixOS = os.getenv("NVIM_USE_NIXOS_MODULE") == "true" or false;
if isNixOS then
  return {
    { "mason-org/mason.nvim", enabled = false },
    { "mason-org/mason-lspconfig.nvim", enabled = false },
    { "jay-babu/mason-nvim-dap.nvim", enabled = false },
  }
else
  return {}
end

