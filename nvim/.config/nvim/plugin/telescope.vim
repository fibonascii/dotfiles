lua require("fibonascii")

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fd <cmd>lua require('fibonascii.telescope').search_dotfiles()<cr>
nnoremap <leader>gw <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>
nnoremap <leader>gm <cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>
nnoremap <leader>gc <cmd>lua require('fibonascii.telescope').git_branches()<cr>
