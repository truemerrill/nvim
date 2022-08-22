-- Options
local options = {
  backup = false,             -- create a backup file
  swapfile = false,           -- create a swap file
  undofile = true,            -- persistant undo history
  fileencoding = "utf-8",     -- default file encoding
  hlsearch = true,            -- hilight all matches on previous search
  mouse = "a",                -- allow the mouse to be used
  smartcase = true,           -- smart case
  smartindent = true,         -- smart indent
  splitbelow = true,          -- horizontal splits go below current window
  splitright = true,          -- vertical splits go right of current window
  cursorline = true,          -- highlight the current line
  number = true,              -- show line numbers
  updatetime = 500,           -- faster completion (4000ms default)
  tabstop = 2,                -- insert two spaces for tab
  shiftwidth = 2,             -- number of spaces inserted for each tab
  expandtab = true,           -- convert tabs to spaces
  wrap = false,               -- do not wrap lines in view
  scrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Global variables
local globals = {
  netrw_banner = 0,
  netrw_liststyle = 3,
  netrw_browse_split = 4,
  netrw_altv = 1,
  netrw_winsize = 25
}

for k, v in pairs(globals) do
  vim.api.nvim_set_var(k, v)
end

