return {
  {
    "nvim-telescope/telescope.nvim",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
      "nvim-tree/nvim-web-devicons",
    },

    build = "make",

    keys = {
      {
        "<leader>ff",
        "<cmd>Telescope find_files<cr>",
        desc = "Find Files",
      },

      {
        "<leader>fg",
        "<cmd>Telescope live_grep<cr>",
        desc = "Live Grep",
      },

      {
        "<leader>fb",
        "<cmd>Telescope buffers<cr>",
        desc = "Buffers",
      },

      {
        "<leader>fr",
        "<cmd>Telescope oldfiles<cr>",
        desc = "Recent Files",
      },

      {
        "<leader>fh",
        "<cmd>Telescope help_tags<cr>",
        desc = "Help",
      },

      {
        "<leader>fc",
        "<cmd>Telescope commands<cr>",
        desc = "Commands",
      },

      {
        "<leader>fk",
        "<cmd>Telescope keymaps<cr>",
        desc = "Keymaps",
      },
    },

    opts = {
      defaults = {
        layout_strategy = "horizontal",

        layout_config = {
          horizontal = {
            preview_width = 0.55,
          },
        },

        sorting_strategy = "ascending",

        prompt_prefix = "   ",

        selection_caret = "  ",

        file_ignore_patterns = {
          "node_modules",
          ".git/",
          "dist/",
          "build/",
        },
      },
    },
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
}

