return { -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "deviantfero/wpgtk.vim" },
  { "AlphaTechnolog/pywal.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
