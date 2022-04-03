local options = {
  laststatus = 2,
  backspace="indent,eol,start",
  background = "dark",
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  backup = false,                          -- creates a backup file
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  pumheight = 10,                          -- pop up menu height
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  timeoutlen = 200,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = false,                        -- if true, it enables persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation when using ">>" or "<<" etc.
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor.
  sidescrolloff = 8,                       -- see above
}

for k,v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append "c"
-- vim.cmd "colorscheme material"
vim.cmd [[set iskeyword+=-]]
vim.cmd "set whichwrap+=<,>,[,],h,l"

HOME = os.getenv("HOME")
