return {
  {
    "stevearc/oil.nvim",
    event = verylazy,
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "-",
        function()
          require("oil").open()
        end,
        { desc = "Open parent directory" },
      },
    },
  },
}
