local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files - all' })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Telescope find files - git' })
vim.keymap.set('n', '<leader>ps',
                    function()
                        builtin.grep_string({ search = vim.fn.input("Grep > ") })
                    end,
                    { desc = 'Telescope project search - grep given string' }
)
