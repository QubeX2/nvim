return {
  -- The main DAP plugin
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      -- Installs the debug adapters for you
      { 'williamboman/mason.nvim' },
      { 'jay-babu/mason-nvim-dap.nvim' },
      -- A nice UI for DAP
      {
        'rcarriga/nvim-dap-ui',
        dependencies = {'nvim-neotest/nvim-nio'},
        -- Recommended: Configure UI to close when debugging session ends
        config = function()
          local dap, dapui = require("dap"), require("dapui")
          --
          -- For C, C++, Rust
          dap.adapters.cppdbg = {
            id = 'cppdbg',
            type = 'executable',
            command = 'OpenDebugAD7', -- Find this path via :Mason
          }

          dap.configurations.cpp = {
            {
              name = "Launch file",
              type = "cppdbg", -- MUST match the adapter name
              request = "launch",
              program = function()
                -- Ask for the executable to debug
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
              end,
              cwd = '${workspaceFolder}',
              stopAtEntry = false,
              -- If you are on linux, you might need to add this:
              -- miDebuggerPath = '/usr/bin/gdb',
            },
          }

          dap.listeners.after.event_terminated["dapui_config"] = function()
            dapui.close()
          end

          dap.listeners.after.event_exited["dapui_config"] = function()
            dapui.close()
          end

          require("mason-nvim-dap").setup({
            ensure_installed = { "cpptools" },
            handlers = {},
          });

        end },
    }
  },
}
