return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      transform_items = function(_, items)
        return vim.tbl_filter(function(item)
          return item.kind ~= require("blink.cmp.types").CompletionItemKind.Snippet
        end, items)
      end,
    },
  },
}
