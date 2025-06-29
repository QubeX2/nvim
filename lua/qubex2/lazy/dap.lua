return {
  -- The main DAP plugin
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      { 'williamboman/mason.nvim'},
      { 'jay-babu/mason-nvim-dap.nvim',
        dependencies = {
          'williamboman/mason.nvim',
          'mfussenegger/nvim-dap',
        },
        config = function()
          require("mason-nvim-dap").setup({
            automatic_installation = true,
            ensure_installed = { "codelldb", "cpptools" },
            handlers = {},
          });
        end,
        opts = {
          hadlers = {},
        },
      },
    },
    {
      'rcarriga/nvim-dap-ui',
      dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
      },
      config = function()
        local dap, dapui = require("dap"), require("dapui")
        dapui.setup({})

        dap.listeners.after.event_initialized.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end

        require("qubex2.lazy.dap.cpptools");
      end,
    },
  },
}
