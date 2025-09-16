-- lua/plugins/colorscheme.lua
return {
  -- add gruvbox
  { "rose-pine/neovim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
}
