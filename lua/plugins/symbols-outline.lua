return {
  -- add symbols-outline
  "simrat39/symbols-outline.nvim",
  cmd = "SymbolsOutline",
  keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  opts = {
    -- add your options that should be passed to the setup() function here
    position = "right",
    -- some nerd-font v2 icons are obsolete in nerd-font v3, here is a temporary fix
    -- https://github.com/simrat39/symbols-outline.nvim/issues/230#issuecomment-1645486253
    symbols = {
      File = { icon = "", hl = "@text.uri" },
      Module = { icon = "", hl = "@namespace" },
      Namespace = { icon = "", hl = "@namespace" },
      Package = { icon = "", hl = "@namespace" },
      Class = { icon = "", hl = "@type" },
      Method = { icon = "ƒ", hl = "@method" },
      Property = { icon = "", hl = "@method" },
      Field = { icon = "", hl = "@field" },
      Constructor = { icon = "", hl = "@constructor" },
      Enum = { icon = "", hl = "@type" },
      Interface = { icon = "", hl = "@type" },
      Function = { icon = "", hl = "@function" },
      Variable = { icon = "", hl = "@constant" },
      Constant = { icon = "", hl = "@constant" },
      String = { icon = "", hl = "@string" },
      Number = { icon = "#", hl = "@number" },
      Boolean = { icon = "", hl = "@boolean" },
      Array = { icon = "", hl = "@constant" },
      Object = { icon = "", hl = "@type" },
      Key = { icon = "", hl = "@type" },
      Null = { icon = "", hl = "@type" },
      EnumMember = { icon = "", hl = "@field" },
      Struct = { icon = "", hl = "@type" },
      Event = { icon = "", hl = "@type" },
      Operator = { icon = "", hl = "@operator" },
      TypeParameter = { icon = "", hl = "@parameter" },
      Component = { icon = "", hl = "@function" },
      Fragment = { icon = "", hl = "@constant" },
    },
  },
}
