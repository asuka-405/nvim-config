require("utils")
require("asuka")

vim.g.clipboard = {
   name = 'xclip',
   copy = {
      ['+'] = 'xclip -selection clipboard',
      ['*'] = 'xclip -selection primary',
      ['%'] = 'xclip -selection secondary',
      ['n'] = 'xclip -selection clipboard',
   },
   paste = {
      ['+'] = 'xclip -selection clipboard -o',
      ['*'] = 'xclip -selection primary -o',
      ['%'] = 'xclip -selection secondary -o',
      ['n'] = 'xclip -selection clipboard -o',
   },
   cache_enabled = 0,
}

