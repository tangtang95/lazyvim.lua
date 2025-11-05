-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- JAVA
local function jump_to_java_test()
  local current_file = vim.fn.expand("%:p") -- Get the full path of the current file

  -- 1. Basic check: Is it a Java file?
  if not current_file:match("%.java$") then
    vim.notify(
      "Not a Java file. This mapping is for Java source files.",
      vim.log.levels.WARN,
      { title = "Java Test Jump" }
    )
    return
  end

  -- 2. Check if it's in the main source path (src/main/java)
  -- We use a pattern to capture the relative path from 'src/main/java' onwards
  local main_java_pattern = "src/main/java/(.*)"
  local relative_path_from_main = current_file:match(main_java_pattern .. "%.java$")

  if not relative_path_from_main then
    vim.notify(
      "Current file is not in src/main/java. Cannot determine test path.",
      vim.log.levels.WARN,
      { title = "Java Test Jump" }
    )
    return
  end

  -- 3. Construct the project root path
  -- This removes everything from 'src/main/java' onwards to get the project base directory
  local project_root = current_file:gsub(main_java_pattern .. ".*", "")

  -- 4. Build the target test file path
  -- We assume the test file will be in src/test/java with 'Test' appended
  local test_file_path = project_root .. "src/test/java/" .. relative_path_from_main .. "Test.java"

  -- 5. Open the test file
  -- 'edit' command will open the file, creating it if it doesn't exist.
  vim.cmd("edit " .. test_file_path)
  vim.notify("Attempting to open: " .. test_file_path, vim.log.levels.INFO, { title = "Java Test Jump" })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function(args)
    local wk = require("which-key")
    wk.add({
      {
        mode = "n",
        buffer = args.buf,
        { "gt", jump_to_java_test, desc = "Goto Test" },
      },
    })
  end,
})
