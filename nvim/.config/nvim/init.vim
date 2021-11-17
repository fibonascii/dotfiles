" ######### Vundle Configuration ##########

filetype off                  " required

call plug#begin()

" ---- Themes ------
"
Plug 'embark-theme/vim', { 'as': 'embark' }
"Plug 'dracula/vim'
"Plug 'gosukiwi/vim-atom-dark'
"Plug 'joshdick/onedark.vim'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'haishanh/night-owl.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"
" ----- Telescope -------"
"
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'

" ----- Pope Benedict Tim the 3 -------

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'

" ----- ThePrimeagen ---------
"
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'ThePrimeagen/harpoon'

" ---- LSP -------------------
"
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hashivim/vim-terraform'

" ------ Editing ---------------
Plug 'preservim/nerdcommenter'
Plug 'rstacruz/vim-closer'


" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

lua require("telescope").load_extension("git_worktree")


" To ignore plugin indent changes, insteadr FAQ

"" ##########  Set Defaults ##########

"Disable compatibility with vi
set nocompatible

"Show matching
set showmatch

"Disable case sensitivity
set ignorecase

" Middle click paste with
set mouse=v

" Highlight search
set hlsearch

" Incremental search
set incsearch

" See multiple spaces as tabstop so <BS> works correctly
set softtabstop=4

" Number of spaces occupied by tab
set tabstop=4

" Set line numbers
set number

" set relativenumber # Uncomment to enbable relative line numbers to cursor
" position

" Converts tabs to whitespace
set expandtab

" Width for auto-indents
set shiftwidth=4

" Indent a new line the same amount as the line just typed
set autoindent

" Bash-like autocompletions
set wildmode=longest, list

" Set 80 column border - improved coding style
set cc=80

" Allow autoindent based on filetype
filetype plugin indent on

" Highlight cursorline
set cursorline

" Enable syntax highlighting
syntax on"

" Enable mouse click
set mouse=a

" Enable system clipboard
set clipboard=unnamedplus

filetype plugin on

" Speed up scrolling in vim
set ttyfast

" Disable swapfile
set noswapfile

" ########## Style and Colorshemes ##########

" --------- Neovim/Tmux True Color Settings
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif
" ----------------------------------

"colorscheme dracula
"colorscheme atom-dark
"colorscheme onedark
"colorscheme palenight
"colorscheme night-owl
"colorscheme embark

syntax enable
colorscheme embark
set background=dark
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'embark'
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1


" open new split panes to right and below
set splitright
set splitbelow

" Stolen from ThePrimagen
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END


"" ########## Custom Mapping ############## 
map <Space> <Leader>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq!<CR>
nnoremap Y y$

" Source Configuration
nnoremap <leader>sv :source $MYVIMRC<CR>

" Open config files
nnoremap <leader>nc :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>zc :e ~/.zshrc<cr>
nnoremap <leader>tc :e ~/.tmux.conf<cr>
nnoremap <leader>lc :e ~/.config/nvim/lua/fibonascii/init.lua<cr>
nnoremap <leader>hc :e ~/.config/nvim/lua/fibonascii/harpoon.lua<cr>


" Splits
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>

nnoremap <leader>sk <C-W>k
nnoremap <leader>sj <C-W>j
nnoremap <leader>sk <C-W>k
nnoremap <leader>sl <C-W>l


" Netrw
nnoremap <leader>ex :Ex<CR>


" Registers
nnoremap <leader>r :reg<CR>

" Marks
nnoremap <leader>m :marks<CR>

" Quick Fix


" Git
nnoremap <leader>G :Git<CR>
nnoremap <leader>Gs :Git status<CR>

" Terminal
nnoremap <leader>t :ter<CR>
nnoremap <leader>vt :vert term<CR>

" Plugin Keys
nnoremap <leader>Pi :PlugInstall<CR>k


"Terraform 
nnoremap <leader>tp :! lids Terraform plan<CR>
nnoremap <leader>tf :! lids Terraform fmt<CR>
nnoremap <leader>ta :! lids Terraform apply -auto-approve<cr>

" Conda 
nnoremap <leader>ca :!conda activate 
nnoremap <leader>cf :!conda list -e > requirements.txt<cr>
nnoremap <leader>cfp :!conda list -e > 
nnoremap <leader>ci :!pip install 
nnoremap <leader>cel :!conda env list<cr>
nnoremap <leader>cr :!conda run -n $(fetch-conda-env.sh) python 
" Python comands. Using sn for Snake HAHA c wat I did


" ########## Harpoon Config ###########
"
nnoremap <leader>hp :lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>hh :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<cr>
nnoremap <leader>5 :lua require("harpoon.ui").nav_file(5)<cr>
nnoremap <leader>6 :lua require("harpoon.ui").nav_file(6)<cr>
nnoremap <leader>7 :lua require("harpoon.ui").nav_file(7)<cr>
nnoremap <leader>8 :lua require("harpoon.ui").nav_file(8)<cr>
nnoremap <leader>9 :lua require("harpoon.ui").nav_file(9)<cr>
nnoremap <leader>0 :lua require("harpoon.ui").nav_file(0)<cr>

" ########### Telescope Config ##############
"
"


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Git Worktree
nnoremap <leader>gwt <cmd> lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>
nnoremap <leader>gct  <cmd> lua require('telescope').extensions.git_worktree.git_worktrees()<cr>
