return { -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "deviantfero/wpgtk.vim" },
  { "AlphaTechnolog/pywal.nvim" },
  { "rose-pine/neovim" },
  { "catppuccin/nvim" },
  { "neanias/everforest-nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
