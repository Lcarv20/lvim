lvim.log.level = "warn"
lvim.format_on_save.enabled = false
-- lvim.colorscheme = "onedark"
-- lvim.colorscheme = "vscode"
lvim.colorscheme = "catppuccin-mocha"
-- lvim.colorscheme = "kanagawa-dragon"
-- lvim.colorscheme = "carbonfox"
-- lvim.colorscheme = "duskfox"
-- lvim.colorscheme = "synthwave84"
-- lvim.colorscheme = "tokyonight-night"
-- lvim.colorscheme = "lunar"
-- lvim.colorscheme = "base16-tokyodark"
-- lvim.colorscheme = "base16-tokyo-city-dark"
-- lvim.colorscheme = "base16-da-one-gray"
-- lvim.colorscheme = "base16-tokyo-night-terminal-dark"
-- lvim.colorscheme = "rose-pine"
-- lvim.colorscheme = "base16-material-darker"
-- lvim.colorscheme = "oxocarbon"
-- lvim.colorscheme = "darkplus"
-- lvim.colorscheme = "github"

-- lvim.builtin.theme.lunar.options.style = "night"
-- lvim.builtin.theme.lunar.options.dim_inactive = false

-- lvim.reload_config_on_save = true
lvim.builtin.illuminate.active = false
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.breadcrumbs.active = true
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.dap.active = true
-- lvim.builtin.terminal.direction = "tab"
lvim.builtin.terminal.direction = "horizontal"
-- lvim.keys.term_mode = { ["<C-l>"] = false }
lvim.builtin.cmp.cmdline.enable = true

lvim.builtin.cmp.window.documentation = {
  border = "rounded",
  winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
}
lvim.builtin.cmp.window.completion = {
  border = "rounded",
  winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
}

-- lvim.builtin.telescope.theme = "ivy"

vim.opt.showtabline = 0

-- vim.opt.nu = true
-- vim.opt.relativenumber = true

-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

-- vim.opt.smartindent = true

-- vim.opt.wrap = false

-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

-- vim.opt.incsearch = true

-- vim.opt.termguicolors = true

-- vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

-- vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"
local options = {
  backup = false,                          -- creates a backup file
  clipboard = "",                          -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 100,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  laststatus = 3,
  showcmd = false,
  ruler = false,
  relativenumber = true, -- set relative numbered lines
  numberwidth = 4,       -- set number column width to 2 {default 4}
  signcolumn = "yes",    -- always show the sign column, otherwise it would shift the text each time
  wrap = false,          -- display lines as one long line
  scrolloff = 0,
  sidescrolloff = 8,

  title = true,
  -- colorcolumn = "80",
  colorcolumn = "120",
}
vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append {
  stl = " ",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
vim.opt.rnu = true

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

vim.filetype.add {
  extension = {
    conf = "dosini",
  },
}
