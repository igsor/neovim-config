-- show absolute number
vim.opt.number = true

-- add numbers to each line on the left side
--vim.opt.relativenumber = true

-- highlight cursor line underneath the cursor horizontally
vim.opt.cursorline = true

-- enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- set to dark mode
vim.opt.background = "dark"

-- color scheme
vim.cmd "colorscheme tokyonight-night"
-- vim.cmd "colorscheme rose-pine-main"

-- Disable noise
vim.opt.errorbells = false
vim.opt.visualbell = false

-- time for mapped sequence to complete [ms]
vim.opt.tm = 500

-- always show current position
vim.opt.ruler = true

-- height of the command bar
vim.opt.cmdheight = 1

-- show matching brackets
vim.opt.showmatch = true
vim.opt.mat = 2

-- always show the status like
vim.opt.laststatus = 2

-- default status line format (irrelevant when vim-airline is in effect)
vim.opt.statusline="%F%m%r%h %w  CWD: %r%{getcwd()}%h   Line: %l/%v"

-- don't show the the "-- INSERT --" mode hint since that's covered by airline
vim.opt.showmode = false

-- airline configuration
--vim.g.airline_section_a = "" -- Mode / Flags
--vim.g.airline_section_b = "" -- Environment status (Git)
--vim.g.airline_section_c = "" -- Filename
--vim.g.airline_section_x = "" -- Filetype
--vim.g.airline_section_y = "" -- Encoding
--vim.g.airline_section_z = "" -- Position in the file

-- adjust status bar theme to colorscheme
--vim.g.airline_theme = "tomorrow" -- FIXME: does not change some backgrounds, looks weird

-- enable powerline font
vim.g.airline_powerline_fonts = true

-- automatic symbol selection doesn't work, do it manually
vim.g.airline_left_sep = ''
vim.g.airline_left_alt_sep = ''
vim.g.airline_right_sep = ''
vim.g.airline_right_alt_sep = ''
vim.g.airline_symbols.branch = ''
vim.g.airline_symbols.colnr = ' ℅:'
vim.g.airline_symbols.readonly = ''
vim.g.airline_symbols.linenr = ' :'
vim.g.airline_symbols.maxlinenr = '☰ '
vim.g.airline_symbols.dirty='⚡'
