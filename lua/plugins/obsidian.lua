return {
  "epwalsh/obsidian.nvim",
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
        {
          name = "vimwiki",
          path = "~/vimwiki",
        }
      },

      -- see below for full list of options 👇
    })
  end,
}
