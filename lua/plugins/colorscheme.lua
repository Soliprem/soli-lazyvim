return { -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "deviantfero/wpgtk.vim" },
  { "AlphaTechnolog/pywal.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
