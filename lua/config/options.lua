-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

--- preferences
vim.g.autoformat = false
vim.g.zig_fmt_autosave = false
vim.opt.relativenumber = false
vim.g.snacks_animate = false
vim.g.rustaceanvim = {
  server = {
    default_settings = {
      ['rust-analyzer'] = {
        diagnostics = {
          disabled = {
            "macro-error",
            "proc-macro-disabled"
          }
        }
      }
    }
  }
}

-- shell
if vim.fn.executable('nu.exe') == 1 then
  vim.opt.shell = 'nu'
  vim.opt.shellcmdflag = '-c'
  vim.opt.shellredir = '2>&1| save --raw %s'
  vim.opt.shellpipe = '2>&1| save --raw %s'
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

if vim.fn.has("wsl") == 1 then

  if vim.fn.executable("wl-copy") == 0 then
    print("wl-clipboard not found, clipboard integration won't work")
  else
    vim.g.clipboard = {
      name = "wl-clipboard (wsl)",
      copy = {
        ["+"] = 'wl-copy --foreground --type text/plain',
        ["*"] = 'wl-copy --foreground --primary --type text/plain',
      },
      paste = {
        ["+"] = (function()
          return vim.fn.systemlist('wl-paste --no-newline|tr -d \'\\r\'', {''}, 1) -- '1' keeps empty lines
        end),
        ["*"] = (function()
          return vim.fn.systemlist('wl-paste --primary --no-newline|tr-d \'\\r\'', {''}, 1)
        end),
      },
      cache_enabled = true
    }
  end

end
