local opt = vim.opt

-- Interfaz
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true

-- Edición
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Navegación
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.splitright = true
opt.splitbelow = true

-- Búsqueda
opt.ignorecase = true
opt.smartcase = true

-- Rendimiento y comportamiento
opt.updatetime = 250
opt.timeoutlen = 400
opt.mouse = "a"
opt.undofile = true

-- Portapapeles de macOS
opt.clipboard = "unnamedplus"
