"" ##### Vundle Configuration ########""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" ### My Plugins ### 
Plugin 'hashivim/vim-terraform'

" Surround with various brackets and tags
Plugin 'tpope/vim-surround'

" Complete brackets and tags
Plugin 'tpope/vim-endwise'

Plugin 'rstacruz/vim-closer'

" Git Support 
Plugin 'tpope/vim-fugitive'

"Fuzzy Finding
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" Unix Command Support
Plugin 'tpope/vim-eunuch'

"File Browsing 
Plugin 'preservim/nerdtree'

" Autocompletion
Plugin 'ycm-core/YouCompleteMe'

" HTML Parsing
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" GoLang Support 
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"" #######  Style and Formatting ##########""

"" Syntax Highlighting
syntax on

" Show Commands
set showcmd

"" Set relative line numbers

set relativenumber

"" ##### Custom Mapping ############## 
map <Space> <Leader>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq!<CR>

" Git
nnoremap <leader>G :Git<CR>
nnoremap <leader>Gs :Git status<CR>

" FZF
nnoremap <leader>f :Files 
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>ww :Windows<CR>
nnoremap <leader>hh :History<CR>

" Terminal
nnoremap <leader>t :ter<CR>
nnoremap <leader>vt :vert term<CR>

" NERDTree
nnoremap <leader>N :NERDTree<CR>

" Terraform
nnoremap <leader>Tf :Terraform fmt<CR>
nnoremap <leader>Tp :Terraform plan<CR>
