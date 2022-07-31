local colors_status_ok, colors = pcall(require, "default_theme.colors")
local base_status_ok, base = pcall(require, "default_theme.base")
if not colors_status_ok or not base_status_ok then return end
local base16 = {
  base00 = "#1e222a",
  base01 = "#353b45",
  base02 = "#3e4451",
  base03 = "#545862",
  base04 = "#565c64",
  base05 = "#abb2bf",
  base06 = "#b6bdca",
  base07 = "#c8ccd4",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#e5c07b",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#61afef",
  base0E = "#c678dd",
  base0F = "#be5046",
}
local hl_group = {
  -- nvim cmp
  CmpItemAbbr = base.CmpItemAbbr,
  CmpItemAbbrMatch = { fg = base.CmpItemAbbrMatchDefault.fg, bold = true },
  CmpBorder = { fg = colors.grey },
  CmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
  CmPmenu = { bg = colors.darker_black },

  -- cmp item kinds
  CmpItemKindConstant = { fg = base16.base09 },
  CmpItemKindFunction = { fg = base16.base0D },
  CmpItemKindIdentifier = { fg = base16.base08 },
  CmpItemKindField = { fg = base16.base08 },
  CmpItemKindVariable = { fg = base16.base0E },
  CmpItemKindSnippet = { fg = colors.red },
  CmpItemKindText = { fg = base16.base0B },
  CmpItemKindStructure = { fg = base16.base0E },
  CmpItemKindType = { fg = base16.base0A },
  CmpItemKindKeyword = { fg = base16.base07 },
  CmpItemKindMethod = { fg = base16.base0D },
  CmpItemKindConstructor = { fg = colors.blue },
  CmpItemKindFolder = { fg = base16.base07 },
  CmpItemKindModule = { fg = base16.base0A },
  CmpItemKindProperty = { fg = base16.base08 },
  -- CmpItemKindEnum = { fg = "" },
  CmpItemKindUnit = { fg = base16.base0E },
  -- CmpItemKindClass = { fg = "" },
  CmpItemKindFile = { fg = base16.base07 },
  -- CmpItemKindInterface = { fg = "" },
  CmpItemKindColor = { fg = colors.red },
  CmpItemKindReference = { fg = base16.base05 },
  -- CmpItemKindEnumMember = { fg = "" },
  CmpItemKindStruct = { fg = base16.base0E },
  -- CmpItemKindValue = { fg = "" },
  -- CmpItemKindEvent = { fg = "" },
  CmpItemKindOperator = { fg = base16.base05 },
  CmpItemKindTypeParameter = { fg = base16.base08 },
}

for hl, col in pairs(hl_group) do
    vim.api.nvim_set_hl(0, hl, col)
end

local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

return {
  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = function(_, vim_item)
      vim_item.kind = string.format(" %s  %s", kind_icons[vim_item.kind], vim_item.kind)
      return vim_item
    end,
  },
  window = {
    completion = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
  },
}
