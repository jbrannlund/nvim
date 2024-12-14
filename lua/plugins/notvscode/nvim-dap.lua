return  {
  "rcarriga/nvim-dap-ui",
  requires = {"mfussenegger/nvim-dap"},
  config = function()
    local dapui = require("dapui")
    dapui.setup()
  end,
}

