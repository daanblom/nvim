vim.cmd("let g:netrw_banner = 0")
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt_local.conceallevel = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.backspace = "indent,eol,start"

vim.opt.splitright = true
vim.opt.splitbelow = false

vim.opt.updatetime = 50
vim.opt.isfname:append("@-@")

vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true

vim.opt.mouse = "a"
vim.g.editorconfig = true
vim.opt.guicursor = "n-v-c:block"
vim.opt.spelllang = { "en", "nl" }

