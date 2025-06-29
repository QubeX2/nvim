local dap = require("dap")
--
-- For C, C++, Rust
dap.adapters.cpptools = {
  type = 'executable',
  command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
  args = {},
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "cpptools",
    request = "launch",
    program = function()
      -- Ask for the executable to debug
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build-tests/apps/CLI/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = false,
  },
}

dap.configurations.c = dap.configurations.cpp

