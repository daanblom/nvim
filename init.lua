require("core")
require("lazySetup")
vim.cmd("colorscheme db")
vim.opt.clipboard:append("unnamedplus")
vim.opt.guicursor = "n-v-c:block"
vim.opt_local.conceallevel = 2
vim.opt.spelllang = { "en", "nl" }
vim.cmd("set spellfile=~/.vim/spell/en.utf-8.add")
vim.cmd("set spell!")
