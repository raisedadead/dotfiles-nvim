-- local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
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
}

return plugins
