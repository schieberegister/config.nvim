

local dap = require('dap')

dap.adapters.delve = {
  type = 'server',
  port = '38697',
  options = {
    initialize_timeout_sec = 20,
  },
  enrich_config = function(config, on_config)
      -- check if .env file 
      if vim.fn.filereadable('.env') then
        vim.cmd('Dotenv .env')
      end
      on_config(config)
  end;
  executable = {
    command = 'dlv',
    args = {'dap', '-l', '127.0.0.1:38697'},
  }
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}"
  },
  {
    type = "delve",
    name = "Debug Package",
    request = "launch",
    program = "${fileDirname}",
  },
  {
    type = "delve",
    name = "Debug test", -- configuration for debugging test files
    request = "launch",
    mode = "test",
    program = "${file}"
  },
  -- works with go.mod packages and sub packages 
  {
    type = "delve",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}"
  }
}
