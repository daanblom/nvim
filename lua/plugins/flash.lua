return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = {
      search = { enabled = false },
      char = { enabled = false },
      treesitter = { labels = "" },
    },
    remote_op = {
      restore = false,
    },
  },
  keys = {
    { "F", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  },
}
