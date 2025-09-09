-- lua/plugins/neo-tree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
    auto_clean_after_session_restore = true,
    close_if_last_window = true,
    filesystem = {
      hijack_netrw_behavior = "disabled",
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
  },
  -- do not open netrw and neotree on startup
  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
