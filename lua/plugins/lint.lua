return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    -- Copy the default args and append the disable flag
    local md_args = vim.list_extend(
      lint.linters.markdownlint.args or { "--stdin" },
      { "--disable", "MD013" }
    )

    lint.linters.markdownlint.args = md_args

    lint.linters_by_ft = {
      markdown = { "markdownlint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end
}
