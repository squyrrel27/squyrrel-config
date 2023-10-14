local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("grep > ") })
end)
vim.keymap.set('n', '<leader>pg', function(opts)
  local pickers = require "telescope.pickers"
  local finders = require "telescope.finders"
  local conf = require("telescope.config").values
  list = vim.fn.systemlist('git diff --name-only master')

  pickers.new(opts, {
    prompt_title = "git diff",
    finder = finders.new_table { results = list },
    sorter = conf.generic_sorter(opts)
  }):find()
end)

