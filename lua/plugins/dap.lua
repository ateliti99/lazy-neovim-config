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
  "mfussenegger/nvim-dap-python",
  -- stylua: ignore
  keys = {
    { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
    { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
  },
  config = function()
    require("dap-python").setup(get_debugpy_python())
  end,
}
