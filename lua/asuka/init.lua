require("asuka.packer")
require("asuka.remap")
require("asuka.show_line_number")
require("asuka.highlights")

vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2

vim.opt.scrolloff = 10

vim.opt.backupskip = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim,/private/tmp/*"
 
vim.opt.ignorecase = true

vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.breakindent = true

vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- No wrap lines
vim.opt.backspace = "indent,eol,start" -- backspace through everything in insert mode

vim.opt.wildignore:append({"*.o", "*~", "*.pyc", "*pycache*", "*.swp", "*.zip", "*.tar.gz", "*/tmp/*", "*/build/*", "*/node_modules/*"}) -- Ignore these files in wildmenu

