return {
	{
		"nvim-neo-tree/neo-tree.nvim",

		branch = "v3.x",

		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},

		opts = {
			close_if_last_window = true,

			popup_border_style = "rounded",

			filesystem = {
				follow_current_file = {
					enabled = true,
				},

				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = true,
					hide_hidden = false,
				},

				window = {
					width = 32,
				},
			},

			window = {
				width = 32,
				mappings = {
					["<space>"] = "none",
					["o"] = "open",
					["s"] = "open_split",
					["v"] = "open_vsplit",
				},
			},
		},
	},

	-- Autopairs
	{
		"windwp/nvim-autopairs",

		event = "InsertEnter",

		opts = {
			check_ts = true,
			fast_wrap = {},
		},
	},

	-- Surround
	{
		"kylechui/nvim-surround",

		version = "*",

		event = "VeryLazy",

		opts = {},
	},

	-- Comments
	{
		"numToStr/Comment.nvim",

		event = "VeryLazy",

		opts = {},
	},

	-- TODO/FIXME
	{
		"folke/todo-comments.nvim",

		event = "VeryLazy",

		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		opts = {},
	},

	-- Better indentation guides
	{
		"lukas-reineke/indent-blankline.nvim",

		main = "ibl",

		opts = {
			indent = {
				char = "│",
			},

			scope = {
				enabled = true,
			},
		},
	},

	-- Trouble
	{
		"folke/trouble.nvim",

		cmd = "Trouble",

		opts = {
			focus = true,
		},
	},

	-- Terminal
	{
		"akinsho/toggleterm.nvim",

		version = "*",

		opts = {
			size = 15,
			open_mapping = [[<c-\>]],
			direction = "float",

			float_opts = {
				border = "rounded",
			},
		},
	},
}
