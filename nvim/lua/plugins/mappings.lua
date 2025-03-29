return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["j"] = { "<Left>" },
          ["k"] = { "v:count == 0 || mode(1)[0:1] == 'no' ? 'j' : 'gj'", expr = true, desc = "Move cursor down" },
          ["l"] = { "v:count == 0 || mode(1)[0:1] == 'no' ? 'k' : 'gk'", expr = true, desc = "Move cursor up" },
          [";"] = { "<Right>" },
          ["<Leader>j"] = { "<cmd>bp<CR>", desc = "Previous tab" },
          ["<Leader>;"] = { "<cmd>bn<CR>", desc = "Next tab" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        v = {
          ["j"] = { "<Left>" },
          ["k"] = { "<Down>" },
          ["l"] = { "<Up>" },
          [";"] = { "<Right>" },
        },
        x = {
          ["p"] = { "pgvy" },
        }
      },
    },
  },
}
