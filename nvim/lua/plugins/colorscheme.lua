return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "roseprime",
    },
  },
  {
    "cdmill/neomodern.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    "vague2k/vague.nvim",
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = "light"
      require("solarized").setup(opts)
      vim.cmd.colorscheme "solarized"
    end,
  },
  {
    "f4z3r/gruvbox-material.nvim",
    -- opts = {
    --   contrast = "hard",
    -- },
    -- config = function()
    --   local colors = require("gruvbox-material.colors").get(vim.o.background, "hard")
    --
    --   local floatBG = "#202324"
    --
    --   require("gruvbox-material").setup {
    --     contrast = "hard",
    --     float = {
    --       background_color = floatBG,
    --     },
    --     customize = function(g, o)
    --       if g == "ColorColumn" then
    --         o.bg = floatBG
    --       else
    --         if o.bg == colors.bg0 then o.bg = "#141414" end
    --       end
    --       return o
    --     end,
    --   }
    -- end,
    -- config = function() -- init function runs before the plugin is loaded
    --   vim.g.gruvbox_material_background = "hard"
    --   if vim.o.background == "dark" then
    --     vim.g.gruvbox_material_colors_override = {
    --       bg0 = { "#141414", "235" },
    --       -- bg1 = { "#141414", "235" },
    --       -- bg2 = { "#141414", "235" },
    --       -- bg3 = { "#141414", "235" },
    --       -- bg4 = { "#141414", "235" },
    --       -- bg5 = { "#141414", "235" },
    --       -- bg_dim = { "#141414", "232" },
    --       -- bg0 = { "#1d2021", "234" },
    --       -- bg1 = { "#282828", "235" },
    --       -- bg2 = { "#282828", "235" },
    --       -- bg3 = { "#3c3836", "237" },
    --       -- bg4 = { "#3c3836", "237" },
    --       -- bg5 = { "#504945", "239" },
    --
    --       bg_statusline1 = { "#212121", "235" },
    --       bg_statusline2 = { "#12101f", "235" },
    --       bg_statusline3 = { "#101915", "239" },
    --       bg_diff_green = { "#32361a", "22" },
    --       bg_visual_green = { "#333e34", "22" },
    --       bg_diff_red = { "#3c1f1e", "52" },
    --       bg_visual_red = { "#442e2d", "52" },
    --       bg_diff_blue = { "#0d3138", "17" },
    --       bg_visual_blue = { "#2e3b3b", "17" },
    --       bg_visual_yellow = { "#473c29", "94" },
    --       bg_current_word = { "#32302f", "236" },
    --     }
    --   else
    --     vim.g.gruvbox_material_colors_override = vim.empty_dict()
    --   end
    --
    --   -- vim.g.gruvbox_material_foreground = "material"
    --   vim.g.gruvbox_material_better_performance = 1
    -- end,
  },
}
