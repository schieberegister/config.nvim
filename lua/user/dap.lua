-- allow import of .env files
local dotenv = require('dotenv')
dotenv.setup()
-- ui
require('dapui').setup({
  expand_lines = true,
})
require("nvim-dap-virtual-text").setup({})
-- configure dap to use ui
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close({})
end

-- go
require('user.dap.go')
