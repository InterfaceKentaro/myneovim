return {
  "lucasadelino/conifer.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    variant = "lunar", 
    transparent = false, -- Whether to set the bg color for the lunar variant
    styles = { -- Override Conifer's highlights, See `:h nvim_set_hl` for syntax
      comments = {

      },
      functions = {},
      keywords = {},
      lsp = {},
      match_paren = {},
      type = {},
      variables = {},
    },
  },
}
