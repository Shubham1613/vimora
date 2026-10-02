return {
  {
    "lewis6991/gitsigns.nvim",

    event = {
      "BufReadPre",
      "BufNewFile",
    },

    opts = {
      signs = {
        add = {
          text = "│",
        },

        change = {
          text = "│",
        },

        delete = {
          text = "_",
        },

        topdelete = {
          text = "‾",
        },

        changedelete = {
          text = "~",
        },
      },

      current_line_blame = false,

      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, lhs, rhs, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, lhs, rhs, opts)
        end

        map("n", "]h", gs.next_hunk)
        map("n", "[h", gs.prev_hunk)

        map("n", "<leader>hs", gs.stage_hunk)
        map("n", "<leader>hr", gs.reset_hunk)
        map("n", "<leader>hp", gs.preview_hunk)

        map("n", "<leader>hb", function()
          gs.blame_line({
            full = true,
          })
        end)

        map("n", "<leader>hd", gs.diffthis)
      end,
    },
  },

  {
    "kdheepak/lazygit.nvim",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
  },
}

