-- local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- infrastructre as code
        "yaml",
        "hcl",
        "dockerfile",
        "jsonc",
        "toml",
        "ini",
      },
    },
  },

  -- Wakatime
  {
    "wakatime/vim-wakatime",
    lazy = false
  },

  -- Copilot
  {
    "github/copilot.vim",
    lazy = false,
    enabled = true
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "plugins.configs.telescope"
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<Esc>"] = require("telescope.actions").close,
      }

      return conf
    end,
  },
}

return plugins
