return function()
  require("catppuccin").setup({
    flavour = "mocha", -- Can be one of: latte, frappe, macchiato, mocha
    background = { light = "latte", dark = "mocha" },
    dim_inactive = {
      enabled = false,
      -- Dim inactive splits/windows/buffers.
      -- NOT recommended if you use old palette (a.k.a., mocha).
      shade = "dark",
      percentage = 0.15,
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = true,
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    styles = {
      comments = { "italic" },
      properties = { "italic" },
      functions = {},
      keywords = {},
      operators = {},
      conditionals = {},
      loops = {},
      booleans = {},
      numbers = {},
      types = {},
      strings = {},
      variables = {},
    },
    integrations = {
      treesitter = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
        },
      },
      aerial = false,
      barbar = false,
      beacon = false,
      cmp = true,
      coc_nvim = false,
      dap = { enabled = true, enable_ui = true },
      dashboard = false,
      fern = false,
      fidget = true,
      gitgutter = false,
      gitsigns = true,
      harpoon = false,
      hop = true,
      illuminate = true,
      indent_blankline = { enabled = true, colored_indent_levels = false },
      leap = false,
      lightspeed = false,
      lsp_saga = true,
      lsp_trouble = true,
      markdown = true,
      mason = true,
      mini = false,
      navic = { enabled = false },
      neogit = false,
      neotest = false,
      neotree = { enabled = false, show_root = true, transparent_panel = false },
      noice = false,
      notify = true,
      nvimtree = true,
      overseer = false,
      pounce = false,
      semantic_tokens = false,
      symbols_outline = false,
      telekasten = false,
      telescope = true,
      treesitter_context = false,
      ts_rainbow = true,
      vim_sneak = false,
      vimwiki = false,
      which_key = true,
    },
    color_overrides = {
      mocha = {
        text = "#F2F2BF",
        subtext1 = "#BAC2DE",
        subtext0 = "#A6ADC8",
        overlay2 = "#C3BAC6",
        overlay1 = "#988BA2",
        overlay0 = "#6E6B6B",
        surface2 = "#6E6C7E",
        surface1 = "#575268",
        surface0 = "#302D41",

        base = "#000000",
        mantle = "#000000",
        crust = "#000000",
      },
    },
    highlight_overrides = {
      all = function(colors)
        return {
          NvimTreeNormal = { fg = colors.none },
          CmpBorder = { fg = "#3e4145" },
        }
      end,
      mocha = function(cp)
        return {
          TabLineSel = { bg = cp.pink },
          CmpBorder = { fg = cp.surface2 },
          Pmenu = { bg = cp.none },
          TelescopeBorder = { link = "FloatBorder" },
        }
      end,
    },
  })
end
