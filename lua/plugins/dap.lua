-- Build the expected mason debugpy venv path and pick the python binary
local function get_debugpy_python()
  local base = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/"
  if jit.os == "Windows" then
    return base .. "Scripts/python.exe"
  else
    return base .. "bin/python"
  end
end

return {
  -- 1. Python Debug Adapter
  {
    "mfussenegger/nvim-dap-python",
    -- stylua: ignore
    keys = {
      { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
    },
    config = function()
      require("dap-python").setup(get_debugpy_python())
    end,
  },

  -- -- 2. Cortex Debug Adapter (Added)
  -- {
  --   "jedrzejboczar/nvim-dap-cortex-debug",
  --   dependencies = { "mfussenegger/nvim-dap" },
  --   config = function()
  --     require("dap-cortex-debug").setup({
  --       debug = false,
  --       extension_path = nil,
  --       lib_extension = nil,
  --       node_path = "node",
  --       dapui_rtt = true,
  --       -- This registers cortex-debug for C/C++ so load_launchjs knows what to do
  --       dap_vscode_filetypes = { "c", "cpp" },
  --       rtt = {
  --         buftype = "Terminal",
  --       },
  --     })
  --
  --     -- This searches the project root for .vscode/launch.json and loads it.
  --     require("dap.ext.vscode").load_launchjs(nil, {
  --       -- If your launch.json uses "cortex-debug" as 'type', map it to c/cpp here if needed,
  --       -- though 'dap_vscode_filetypes' above usually handles this.
  --       ["cortex-debug"] = { "c", "cpp" },
  --     })
  --   end,
  -- },
}
