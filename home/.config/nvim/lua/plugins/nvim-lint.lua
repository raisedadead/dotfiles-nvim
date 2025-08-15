-- lua/plugins/nvim-lint.lua
return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      -- If Markdown linting exists, remove it
      if opts.linters_by_ft then
        opts.linters_by_ft.markdown = nil
      end
    end,
  },
}
