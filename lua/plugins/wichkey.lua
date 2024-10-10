return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.register({
      d = { name = "Debugger" },
      f = { name = "Telescope" },
      l = { name = "LSP" },
			n = { name = "NoneLSP" },
    }, { prefix = "<leader>" })
  end,
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

