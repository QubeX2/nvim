local dap = require("dap")
local extension_path = vim.fn.stdpath('data') .. "/mason/packages/codelldb/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"

dap.adapters.codelldb = {
  id = "codelldb",
  name = "codelldb",
  type = "executable",
  command = vim.fn.stdpath('data') .. "/mason/bin/codelldb",
}

dap.configurations.cpp = {
  {
    name = "My Launch",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build-tests/apps/CLI/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
  },
}

dap.configurations.c = dap.configurations.cpp
