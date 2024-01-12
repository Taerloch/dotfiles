return {
  "epwalsh/obsidian.nvim",
  lazy = false,

  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
       {
        name = "richmpg",
        path = "~/projects/richmpg/docs",
      },
    },

    -- see below for full list of options 👇
  },
}



