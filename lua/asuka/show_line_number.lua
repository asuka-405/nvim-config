-- Show line numbers by default
vim.o.number = true

-- Define a function to toggle line numbers based on buffer type
function ToggleLineNumbers()
  if vim.bo.filetype:match('nerdtree|explorer') then
    vim.o.number = false
  else
    vim.o.number = true
  end
end

-- Auto-command to call the function when a buffer is entered or exited
vim.api.nvim_exec([[
  augroup line_number_toggle
    autocmd!
    autocmd BufEnter * lua ToggleLineNumbers()
    autocmd BufLeave * lua ToggleLineNumbers()
  augroup END
]], false)
