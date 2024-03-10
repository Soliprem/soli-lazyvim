return {
  {
    "vhyrro/luarocks.nvim",
    branch = "more-fixes",
    config = function()
      require("luarocks").setup({})
    end,
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { { "nvim-neorg/neorg-telescope" }, { "luarocks.nvim" }, { "3rd/image.nvim" } },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.export"] = {}, -- Adds export options
          ["core.integrations.telescope"] = {},
          ["core.integrations.image"] = {},
          -- ["core.latex.renderer"] = {},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/Documents/neorg",
              },
            },
          },
        },
      })
    end,
  },
}
