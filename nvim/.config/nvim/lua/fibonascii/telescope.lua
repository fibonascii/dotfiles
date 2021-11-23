local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        file_ignore_patterns = {
         "./plugged/*"
    },

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    }
})

require("telescope").load_extension("fzy_native")
--require("telescope").load_extension("git_worktree")

--[[local M = {}]]
--[[M.search_dotfiles = function()]]
    --[[require("telescope.builtin").find_files{]]
        --[[cwd = '~/.config/nvim/',]]
        --[[prompt_tile = ' << .dotfiles']]
    --[[}]]

--[[local M = {}]]
--[[M.search_terraform_project = function()]]
    --[[require("telescope.builtin").find_files({]]
        --[[prompt_title = "<< Terraform >>",]]

    --[[})]]
