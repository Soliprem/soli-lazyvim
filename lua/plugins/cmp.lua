-- add cmp-emoji
return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji", "hrsh7th/cmp-calc", "kdheepak/cmp-latex-symbols" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources(
      vim.list_extend(opts.sources, { { name = "emoji" }, { name = "calc" }, { name = "latex_symbols" } })
    )
  end,
}
