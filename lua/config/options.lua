local opt = vim.opt

-- Appearance
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.showmode = false
opt.laststatus = 3

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Windows
opt.splitbelow = true
opt.splitright = true

-- Editing
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.mouse = "a"
opt.clipboard = "unnamedplus"

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Files
opt.undofile = true
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- Faster updates
opt.updatetime = 250
opt.timeoutlen = 400

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99
opt.foldenable = true

-- Better UI
opt.pumheight = 10
opt.conceallevel = 0
opt.fillchars = {
  eob = " ",
  fold = " ",
  foldopen = "",
  foldclose = "",
  foldsep = " ",
}

-- Disable some built-in providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

