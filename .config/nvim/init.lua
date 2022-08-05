-- ==============================
-- Text Rendering
-- ==============================
-- {{{

vim.o.fileencodings = "utf-8" -- Unicode Support on file?
vim.o.encoding = "utf-8" -- Unicode Support
vim.o.wrap = true -- Enable Line Wrapping
vim.o.autoindent = true -- Indentation
vim.o.ignorecase = true -- Ignore case when searching
vim.o.ai = true -- Auto Indent
vim.o.si = true -- Smart Indent
vim.o.smarttab = true -- tabwidth smart?
vim.o.tabstop = 2 -- set tabs only 2 spaces
vim.o.shiftwidth = 2 -- i think its same like tabstop
vim.o.backspace = "indent,eol,start" -- Allow backspace over indent, line breaks, Insertion start

-- }}}

-- ==============================
-- User Interfaces
-- ==============================
-- {{{

vim.o.laststatus = 2 -- always display the status bar.
-- vim.o.ruler			" always show cursor position
vim.o.cursorline = true -- Line Highlight under cursor
vim.o.nu = true -- [nu/number] show line number on sidebar
vim.o.relativenumber = true -- Set line number on current line and relative on all other lines
vim.o.mouse = a -- enable mouse support for scroll and resizing
vim.o.title = true -- Set window's title to show current file name

-- }}}
-- ==============================
-- Miscellaneous
-- ==============================
-- {{{

-- vim.o.dir=~/.cache/vim		" VIM Swap Dir
-- vim.o.backupdir=~/.cache/vim	" VIM backup dir
vim.o.nobackup = true -- Don't Backup vim file
vim.o.wildignore = '*/node_modules/*'

vim.cmd "autocmd InsertLeave * set nopaste"


-- }}}
-- ==============================
-- Performance
-- ==============================
-- {{{

vim.o.lazyredraw = true -- don't update screen during macro and script execute

-- }}}
-- ==============================
-- Import
-- ==============================
-- {{{

-- packer plugins
require('plugins')

-- }}}


vim.o.inccommand = "split"
