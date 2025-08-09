require("core")
require("lazySetup")
vim.cmd("set spellfile=~/.vim/spell/en.utf-8.add")
vim.cmd("set spell!")
vim.cmd("set cursorline")
vim.cmd("colorscheme mbc")

-- nvim-lint setup
local lint = require("lint")

lint.linters_by_ft = {
  markdown = { "markdownlint" },
}

-- Optional: point directly to Mason's binary
lint.linters.markdownlint.cmd = vim.fn.stdpath("data") .. "/mason/bin/markdownlint"

-- Run linter on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})
