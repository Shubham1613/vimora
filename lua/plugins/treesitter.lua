return {
  {
    "nvim-treesitter/nvim-treesitter",

    branch = "master",

    build = ":TSUpdate",

    event = {
      "BufReadPost",
      "BufNewFile",
    },

    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",

        "bash",
        "c",
        "cpp",

        "css",
        "html",

        "javascript",
        "typescript",
        "tsx",
        "json",

        "python",
        "go",
        "rust",

        "markdown",
        "markdown_inline",

        "yaml",
        "toml",
        "dockerfile",
        "gitignore",
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },

      incremental_selection = {
        enable = true,
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}

