return { -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "deviantfero/wpgtk.vim" },
  { "AlphaTechnolog/pywal.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "catppuccin/nvim", name = "catppuccin" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
