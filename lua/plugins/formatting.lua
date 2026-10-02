return {
  {
    "stevearc/conform.nvim",

    event = {
      "BufWritePre",
    },

    opts = {
      formatters_by_ft = {
        lua = {
          "stylua",
        },

        python = {
          "isort",
          "black",
        },

        javascript = {
          "prettier",
        },

        javascriptreact = {
          "prettier",
        },

        typescript = {
          "prettier",
        },

        typescriptreact = {
          "prettier",
        },

        json = {
          "prettier",
        },

        css = {
          "prettier",
        },

        html = {
          "prettier",
        },

        markdown = {
          "prettier",
        },

        yaml = {
          "prettier",
        },

        sh = {
          "shfmt",
        },

        bash = {
          "shfmt",
        },

        go = {
          "gofmt",
        },

        rust = {
          "rustfmt",
        },

        c = {
          "clang_format",
        },

        cpp = {
          "clang_format",
        },
      },

      format_on_save = {
        timeout_ms = 3000,
        lsp_fallback = true,
      },
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",

    dependencies = {
      "mason-org/mason.nvim",
    },

    opts = {
      ensure_installed = {
        -- Formatters
        "stylua",
        "prettier",
        "black",
        "isort",
        "shfmt",
        "clang-format",

        -- Linters
        "shellcheck",
        "markdownlint",
        "eslint_d",
      },
    },
  },

  {
    "mfussenegger/nvim-lint",

    event = {
      "BufReadPost",
      "BufNewFile",
    },

    config = function()
      local lint = require("lint")

      lint.linters_by_ft = {
        markdown = {
          "markdownlint",
        },

        sh = {
          "shellcheck",
        },

        bash = {
          "shellcheck",
        },

        javascript = {
          "eslint_d",
        },

        javascriptreact = {
          "eslint_d",
        },

        typescript = {
          "eslint_d",
        },

        typescriptreact = {
          "eslint_d",
        },
      }

      vim.api.nvim_create_autocmd({
        "BufEnter",
        "BufWritePost",
        "InsertLeave",
      }, {
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}

