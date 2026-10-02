local map = vim.keymap.set

local opts = {
	noremap = true,
	silent = true,
}

-- General
map("n", "<leader>w", "<cmd>w<cr>", opts)
map("n", "<leader>q", "<cmd>q<cr>", opts)
map("n", "<leader>Q", "<cmd>qa!<cr>", opts)
map("n", "<leader>x", "<cmd>bdelete<cr>", opts)

-- Save
map("n", "<C-s>", "<cmd>w<cr>", opts)
map("i", "<C-s>", "<Esc><cmd>w<cr>", opts)

-- Escape
map("i", "jk", "<Esc>", opts)
map("i", "jj", "<Esc>", opts)

-- Better movement
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize
map("n", "<C-Up>", "<cmd>resize +2<cr>", opts)
map("n", "<C-Down>", "<cmd>resize -2<cr>", opts)
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts)
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts)

-- Buffers
map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", opts)
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", opts)
map("n", "<leader>bd", "<cmd>bdelete<cr>", opts)

-- File explorer
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)
map("n", "<leader>o", "<cmd>Neotree focus<cr>", opts)

-- Terminal
map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", opts)
map("t", "<Esc>", [[<C-\><C-n>]], opts)
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
map("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)

-- Clear search
map("n", "<Esc>", "<cmd>nohlsearch<cr>", opts)

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Better paste
map("x", "<leader>p", '"_dP', opts)

-- Diagnostics
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", opts)
map("n", "<leader>xq", "<cmd>copen<cr>", opts)

-- Lazy
map("n", "<leader>L", "<cmd>Lazy<cr>", opts)

-- Mason
map("n", "<leader>M", "<cmd>Mason<cr>", opts)

-- Git
map("n", "<leader>gg", "<cmd>LazyGit<cr>", opts)

-- Formatting
map("n", "<leader>f", function()
	require("conform").format({
		async = true,
		lsp_fallback = true,
	})
end, opts)

-- DAP
map("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end, opts)

map("n", "<leader>dc", function()
	require("dap").continue()
end, opts)

map("n", "<leader>do", function()
	require("dap").step_over()
end, opts)

map("n", "<leader>di", function()
	require("dap").step_into()
end, opts)

map("n", "<leader>du", function()
	require("dapui").toggle()
end, opts)
