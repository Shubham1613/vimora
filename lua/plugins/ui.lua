return {
  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      options = {
        theme = "catppuccin",
        globalstatus = true,
        component_separators = "",
        section_separators = {
          left = "",
          right = "",
        },
      },

      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return " " .. str .. " "
            end,
          },
        },

        lualine_b = {
          "branch",
          "diff",
          "diagnostics",
        },

        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },

        lualine_x = {
          "encoding",
          "fileformat",
          "filetype",
        },

        lualine_y = {
          "progress",
        },

        lualine_z = {
          "location",
        },
      },
    },
  },

  -- Buffer tabs
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "slant",
      },
    },
  },

  -- Which-key
  {
    "folke/which-key.nvim",

    event = "VeryLazy",

    opts = {
      delay = 300,
    },
  },

  -- Notifications
  {
    "rcarriga/nvim-notify",

    opts = {
      background_colour = "#1e1e2e",
      timeout = 2500,
      stages = "fade_in_slide_out",
    },

    config = function(_, opts)
      local notify = require("notify")
      notify.setup(opts)
      vim.notify = notify
    end,
  },

  -- Better command line
  {
    "folke/noice.nvim",

    event = "VeryLazy",

    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },

    opts = {
      lsp = {
        progress = {
          enabled = true,
        },

        hover = {
          enabled = true,
        },

        signature = {
          enabled = true,
        },
      },

      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
    },
  },

  -- Dashboard
  {
    "goolord/alpha-nvim",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        " ",
        " ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
        " ████╗  ██║██║   ██║██║████╗ ████║",
        " ██╔██╗ ██║██║   ██║██║██╔████╔██║",
        " ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        " ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        " ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
        " ",
      }

      dashboard.section.buttons.val = {
        dashboard.button("e", "󰈔  New file", "<cmd>ene<CR>"),
        dashboard.button("f", "󰱼  Find file", "<cmd>Telescope find_files<CR>"),
        dashboard.button("r", "󰄉  Recent files", "<cmd>Telescope oldfiles<CR>"),
        dashboard.button("g", "󰊢  Git", "<cmd>LazyGit<CR>"),
        dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
      }

      dashboard.section.footer.val = {
        "⚡ Neovim",
      }

      alpha.setup(dashboard.opts)
    end,
  },
}

