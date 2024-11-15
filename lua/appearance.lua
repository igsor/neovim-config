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
vim.cmd "colorscheme monokai_pro"

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
vim.g.airline_powerline_fonts = true -- no effect?!
