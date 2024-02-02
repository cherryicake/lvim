-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- if you don't want all the parsers change this to a table of the ones you want
lvim.plugins = {
  "catppuccin/nvim",
  "ellisonleao/gruvbox.nvim",

  ---------- LSP progress messages ---------------
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    config = function()
      require("fidget").setup()
    end,
  },
  "simrat39/symbols-outline.nvim",

  ------- rust ---------------
  "simrat39/rust-tools.nvim",
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

}

reload 'user/options'
reload 'user/rust'
reload 'user/catppuccin'
reload 'user/gruvbox'
reload 'user/symbols_outline'

