vim.o.wrap = false

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = ''

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

vim.schedule(function()
  vim.g.clipboard = 'wl-copy'
end)

-- Enable break indent
vim.o.breakindent = true

-- indent
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

-- Save undo history
vim.o.undofile = true

-- No swap, I dont need
vim.o.swapfile = false

-- No backup, I dont need
vim.o.backup = false

-- Best search settings :)
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.hlsearch = false
vim.o.incsearch = true
-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 100

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

vim.opt.colorcolumn = '120'

--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 8

vim.opt.more = false

vim.opt.title = true
vim.opt.titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a (nvim)'

-- netrw config
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Block cursor
vim.opt.guicursor = ''
