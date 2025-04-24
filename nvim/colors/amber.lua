-- Amber Theme for Neovim
-- Author: Tobias Doerrich
-- Version: 0.1

local highlight = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Clear existing highlights
vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'Amber'

-- Color Palette
local colors = {
  bg_primary = '#1E1E2A',
  bg_secondary = '#252536',
  bg_tertiary = '#191924',
  bg_active = '#3A3A4E',
  fg_primary = '#E6E1D5',
  fg_secondary = '#B0A896',
  fg_muted = '#7A7468',
  border = '#2D2C3F',
  selection = '#3E3A46',
  active_item = '#8B7A64',
  scrollbar = '#7A7468',
  menu_bg = '#2A2A3E',
  status_bar = '#2D2C3F',
  keyword = '#E2B86D',
  func = '#D9A66C',
  string = '#A7C0A2',
  number = '#E4965F',
  type = '#D0C9AD',
  constant = '#E4B58F',
  parameter = '#D8C9B8',
  operator = '#C0B3A3',
  bracket = '#D6CFB7',
  comment = '#B0A896',
  error = '#F5836B',
  warning = '#E6AC4D',
  info = '#B8C7AF',
  success = '#A0C5A9',
  hint = '#D0C9AD',
  added = '#A0C5A9',
  modified = '#E6AC4D',
  deleted = '#F5836B',
  cursor = '#FFFFFF',
  search = '#706A51',
  important = '#E2B86D',
  accent = '#D9A66C',
}

-- Editor Highlights
highlight('Normal', { fg = colors.fg_primary, bg = colors.bg_primary })
highlight('NormalFloat', { fg = colors.fg_primary, bg = colors.bg_secondary })
highlight('Cursor', { fg = colors.bg_primary, bg = colors.cursor })
highlight('CursorLine', { bg = colors.bg_active })
highlight('CursorColumn', { bg = colors.bg_active })
highlight('ColorColumn', { bg = colors.bg_tertiary })
highlight('LineNr', { fg = colors.fg_muted, bg = colors.bg_primary })
highlight('CursorLineNr', { fg = colors.accent, bg = colors.bg_active, bold = true })
highlight('VertSplit', { fg = colors.border, bg = colors.bg_primary })
highlight('Folded', { fg = colors.fg_secondary, bg = colors.bg_secondary })
highlight('FoldColumn', { fg = colors.fg_muted, bg = colors.bg_primary })
highlight('SignColumn', { bg = colors.bg_primary })
highlight('MatchParen', { fg = colors.important, bg = colors.bg_active, bold = true })
highlight('StatusLine', { fg = colors.fg_primary, bg = colors.status_bar })
highlight('StatusLineNC', { fg = colors.fg_muted, bg = colors.bg_secondary })
highlight('Pmenu', { fg = colors.fg_primary, bg = colors.menu_bg })
highlight('PmenuSel', { fg = colors.fg_primary, bg = colors.active_item })
highlight('PmenuSbar', { bg = colors.bg_secondary })
highlight('PmenuThumb', { bg = colors.scrollbar })
highlight('WildMenu', { fg = colors.fg_primary, bg = colors.selection })
highlight('TabLine', { fg = colors.fg_secondary, bg = colors.bg_secondary })
highlight('TabLineFill', { fg = colors.fg_secondary, bg = colors.bg_tertiary })
highlight('TabLineSel', { fg = colors.fg_primary, bg = colors.bg_active })
highlight('Title', { fg = colors.accent, bold = true })
highlight('Visual', { bg = colors.selection })
highlight('VisualNOS', { bg = colors.selection })
highlight('Search', { fg = colors.fg_primary, bg = colors.search })
highlight('IncSearch', { fg = colors.bg_primary, bg = colors.accent })
highlight('NonText', { fg = colors.fg_muted })
highlight('EndOfBuffer', { fg = colors.fg_muted })
highlight('ErrorMsg', { fg = colors.error, bold = true })
highlight('WarningMsg', { fg = colors.warning, bold = true })
highlight('ModeMsg', { fg = colors.fg_primary, bold = true })
highlight('MoreMsg', { fg = colors.accent, bold = true })
highlight('Question', { fg = colors.accent, bold = true })
highlight('Directory', { fg = colors.accent })
highlight('Conceal', { fg = colors.fg_muted, bg = colors.bg_primary })
highlight('SpecialKey', { fg = colors.fg_muted })

-- Syntax Highlighting
highlight('Comment', { fg = colors.comment, italic = true })
highlight('Constant', { fg = colors.constant })
highlight('String', { fg = colors.string })
highlight('Character', { fg = colors.string })
highlight('Number', { fg = colors.number })
highlight('Boolean', { fg = colors.constant })
highlight('Float', { fg = colors.number })
highlight('Identifier', { fg = colors.parameter })
highlight('Function', { fg = colors.func })
highlight('Statement', { fg = colors.keyword })
highlight('Conditional', { fg = colors.keyword })
highlight('Repeat', { fg = colors.keyword })
highlight('Label', { fg = colors.keyword })
highlight('Operator', { fg = colors.operator })
highlight('Keyword', { fg = colors.keyword })
highlight('Exception', { fg = colors.keyword })
highlight('PreProc', { fg = colors.constant })
highlight('Include', { fg = colors.keyword })
highlight('Define', { fg = colors.keyword })
highlight('Macro', { fg = colors.constant })
highlight('PreCondit', { fg = colors.constant })
highlight('Type', { fg = colors.type })
highlight('StorageClass', { fg = colors.type })
highlight('Structure', { fg = colors.type })
highlight('Typedef', { fg = colors.type })
highlight('Special', { fg = colors.accent })
highlight('SpecialChar', { fg = colors.string })
highlight('Tag', { fg = colors.type })
highlight('Delimiter', { fg = colors.bracket })
highlight('SpecialComment', { fg = colors.comment, bold = true })
highlight('Debug', { fg = colors.error })
highlight('Underlined', { fg = colors.info, underline = true })
highlight('Ignore', { fg = colors.fg_muted })
highlight('Error', { fg = colors.error })
highlight('Todo', { fg = colors.important, bg = colors.bg_secondary, bold = true })

-- Diff Highlighting
highlight('DiffAdd', { fg = colors.added, bg = colors.bg_tertiary })
highlight('DiffChange', { fg = colors.modified, bg = colors.bg_tertiary })
highlight('DiffDelete', { fg = colors.deleted, bg = colors.bg_tertiary })
highlight('DiffText', { fg = colors.fg_primary, bg = colors.selection })

-- GitSigns
highlight('GitSignsAdd', { fg = colors.added })
highlight('GitSignsChange', { fg = colors.modified })
highlight('GitSignsDelete', { fg = colors.deleted })

-- Treesitter (if you use it)
highlight('TSComment', { link = 'Comment' })
highlight('TSConstant', { link = 'Constant' })
highlight('TSConstBuiltin', { fg = colors.constant, italic = true })
highlight('TSConstMacro', { link = 'Constant' })
highlight('TSString', { link = 'String' })
highlight('TSStringRegex', { fg = colors.string, italic = true })
highlight('TSStringEscape', { fg = colors.constant })
highlight('TSCharacter', { link = 'Character' })
highlight('TSNumber', { link = 'Number' })
highlight('TSBoolean', { link = 'Boolean' })
highlight('TSFloat', { link = 'Float' })
highlight('TSFunction', { link = 'Function' })
highlight('TSFuncBuiltin', { fg = colors.func, italic = true })
highlight('TSFuncMacro', { link = 'Function' })
highlight('TSParameter', { link = 'Identifier' })
highlight('TSParameterReference', { link = 'Identifier' })
highlight('TSMethod', { link = 'Function' })
highlight('TSField', { fg = colors.parameter })
highlight('TSProperty', { fg = colors.parameter })
highlight('TSConstructor', { fg = colors.type })
highlight('TSConditional', { link = 'Conditional' })
highlight('TSRepeat', { link = 'Repeat' })
highlight('TSLabel', { link = 'Label' })
highlight('TSOperator', { link = 'Operator' })
highlight('TSKeyword', { link = 'Keyword' })
highlight('TSKeywordFunction', { fg = colors.keyword })
highlight('TSKeywordOperator', { fg = colors.keyword })
highlight('TSException', { link = 'Exception' })
highlight('TSType', { link = 'Type' })
highlight('TSTypeBuiltin', { fg = colors.type, italic = true })
highlight('TSStructure', { link = 'Structure' })
highlight('TSInclude', { link = 'Include' })
highlight('TSVariable', { fg = colors.parameter })
highlight('TSVariableBuiltin', { fg = colors.constant, italic = true })
highlight('TSText', { fg = colors.fg_primary })
highlight('TSStrong', { fg = colors.fg_primary, bold = true })
highlight('TSEmphasis', { fg = colors.fg_primary, italic = true })
highlight('TSUnderline', { fg = colors.fg_primary, underline = true })
highlight('TSTitle', { fg = colors.accent })
highlight('TSLiteral', { fg = colors.string })
highlight('TSURI', { fg = colors.string, underline = true })
highlight('TSTag', { fg = colors.type })
highlight('TSTagDelimiter', { fg = colors.bracket })

-- LSP Diagnostic
highlight('DiagnosticError', { fg = colors.error })
highlight('DiagnosticWarn', { fg = colors.warning })
highlight('DiagnosticInfo', { fg = colors.info })
highlight('DiagnosticHint', { fg = colors.hint })
highlight('DiagnosticUnderlineError', { undercurl = true, sp = colors.error })
highlight('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.warning })
highlight('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.info })
highlight('DiagnosticUnderlineHint', { undercurl = true, sp = colors.hint })

-- Apply theme
return colors
