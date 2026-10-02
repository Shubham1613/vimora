return {
  -- Session management
  {
    "folke/persistence.nvim",

    event = "BufReadPre",

    opts = {},

    keys = {
      {
        "<leader>qs",
        function()
          require("persistence").load()
        end,
        desc = "Restore Session",
      },

      {
        "<leader>ql",
        function()
          require("persistence").load({
            last = true,
          })
        end,
        desc = "Restore Last Session",
      },

      {
        "<leader>qd",
        function()
          require("persistence").stop()
        end,
        desc = "Stop Session",
      },
    },
  },

  -- Better UI select/input
  {
    "stevearc/dressing.nvim",

    event = "VeryLazy",

    opts = {},
  },

  -- Better quickfix/location lists
  {
    "folke/trouble.nvim",

    cmd = "Trouble",

    opts = {},
  },
}

