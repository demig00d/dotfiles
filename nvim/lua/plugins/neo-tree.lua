return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window = opts.window or {}
      opts.window.width = 50
      opts.close_if_last_window = true
      -- opts.filesystem.follow_current_file = {
      --       enabled = true,
      -- }
    end,
    -- init = function() -- init function runs before the plugin is loaded
    --   vim.cmd("Neotree show")
    -- end,
  }
}
