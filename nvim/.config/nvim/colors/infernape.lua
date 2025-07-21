vim.g.colors_name = "mytheme"

vim.cmd("highlight clear")
vim.cmd("syntax reset")

vim.o.background = "dark"

vim.cmd("set cursorline")

local colors = {
  bg    = "#222222",
  fg    = "#b9b9b9",
  dark_fg = "#808080",
  white = "#fcfcfc",
  green = "#6FB97C",
  cyan = "#009AA2",
  violet = "#b294bb",
  orange = "#f1823b",
  red = "#B12B1b",
  yellow = "#daa324",
  purple = "#A04896",
  comment = "#707080",
}
local set = vim.api.nvim_set_hl
-- Core highlight groups 
set(0, "Normal",        { fg = colors.fg, bg = colors.bg })
set(0, "Comment",       { fg = colors.comment })
set(0, "Constant",      { fg = colors.fg })
set(0, "String",        { fg = colors.green })
set(0, "Character",     { fg = colors.green })
set(0, "Number",        { fg = colors.dark_fg })
set(0, "Boolean",       { fg = colors.fg })
set(0, "Identifier",    { fg = colors.fg })
set(0, "Function",      { fg = colors.cyan })
set(0, "Statement",     { fg = colors.yellow })
set(0, "Conditional",   { fg = colors.yellow })
set(0, "Repeat",        { fg = colors.yellow })
set(0, "Operator",      { fg = colors.fg })
set(0, "Keyword",       { fg = colors.orange })
set(0, "Type",          { fg = colors.violet})
set(0, "Special",       { fg = colors.fg })
set(0, "Underlined",    { fg = colors.white, underline = true })
set(0, "Ignore",        { fg = colors.fg })
set(0, "Error",         { fg = colors.red, bg = colors.bg, bold = true })
set(0, "Todo",          { fg = colors.red, bg = colors.bg, bold = true })

-- UI elements
set(0, "CursorLine",    { bg = "#2a2a2a" })
set(0, "CursorColumn",  { bg = "#2a2a2a" })
set(0, "Cursor",        { fg = colors.bg, bg = colors.cyan })
set(0, "ColorColumn",   { bg = "#2a2a2a" })
set(0, "LineNr",        { fg = colors.dark_fg })
set(0, "CursorLineNr",  { fg = colors.cyan, bold = true })
set(0, "StatusLine",    { fg = colors.cyan, bg = colors.cyan })
set(0, "StatusLineNC",  { fg = "#777777", bg = "#222222" })
set(0, "Visual",        { bg = "#333333" })
set(0, "Pmenu",         { fg = colors.fg, bg = "#2e2e2e" })
set(0, "PmenuSel",      { fg = colors.bg, bg = colors.white })
