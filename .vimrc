" ===================================================================
" VIM-PLUG
" ===================================================================

"" vim-plug
call plug#begin('~/.vim/bundle')

" show index in search
Plug 'henrik/vim-indexed-search'

" autoclose bracket
"Plug 'Townk/vim-autoclose'

" tagbar
Plug 'majutsushi/tagbar'

" NERDTree
Plug 'scrooloose/nerdtree'

" NERDTree git
Plug 'Xuyuanp/nerdtree-git-plugin'

" NERDCommenter
Plug 'scrooloose/nerdcommenter'

" Syntastic
Plug 'vim-syntastic/syntastic'

" vim-go
Plug 'fatih/vim-go'

" DISPLAY
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized dark theme
Plug 'altercation/vim-colors-solarized'

" lightline
Plug 'itchyny/lightline.vim'

" indent line
Plug 'Yggdroot/indentLine'

" NAVIGATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
Plug 'kien/ctrlp.vim'

" denite
Plug 'Shougo/denite.nvim'

" AUTOCOMPLETE
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python auto-complete
Plug 'zchee/deoplete-jedi'

" deoplete - autocompletion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" golang autocomplete
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.vim/bundle/gocode/nvim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

call plug#end()

" ===================================================================
" DISPLAY 
" ===================================================================

set number " show line number
set relativenumber " show relative number:
syntax on " turn on syntax highlighting
filetype on "file type detection 
set colorcolumn=90 "column at 90

" SOLARIZE THEME
syntax enable
set background=dark
colorscheme solarized

" ???
" set showcmd
" set ruler

" highlight search
set hlsearch

" cursor line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" wrap text
set wrap linebreak nolist

" ===================================================================
" KEYS
" ===================================================================

" Map leader key to space
let mapleader=" "

" <leader>s to reload config (default leader key: "\")
map <leader>s :source ~/.vimrc<CR> 

" re-open last buffer with <leader><leader>
nnoremap <Leader><Leader> :e#<CR>

" cancel a search with double ESCAPE
" noremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" tagbar
nmap <leader>l :TagbarToggle<CR>

" buffer cycling with Tab and Shift + Tab
" display `:ls` when cycling through the tab
:nnoremap <Tab> :bprevious<CR>
:nnoremap <S-Tab> :bnext<CR>
:nnoremap <A-n> :bnext<CR>:redraw<CR>:ls<CR>
:nnoremap <A-p> :bprevious<CR>:redraw<CR>:ls<CR>

" enter to clear search highlight
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" use arrow for moving graphical line
nmap <up> gk
nmap <down> gj

" ===================================================================
" PLUGINS 
" ===================================================================

filetype plugin on
filetype indent on

" lightline color theme
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set laststatus=2

" NERDTree
""""""""""""""""
" auto on
"autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_gui_startup=0

" toggle by <C-n>
map <C-n> :NERDTreeToggle<CR>

" ignore some files
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" show hidden files
let NERDTreeShowHidden=1

" close the NERDtree when open a file
let NERDTreeQuitOnOpen = 1

" don't focus on NERDtree when open
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" off auto open
let g:NERDTreeHijackNetrw=0

" NERDCommenter
"""""""""""""""""

" Syntastic recommended settings
"""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0

"let g:syntastic_go_checkers = ['go', 'golint']
let g:syntastic_go_checkers = []

" vim-go
"""""""""""""""""
" auto fmt when write
let g:go_fmt_autosave = 1

" auto import when save
let g:go_fmt_command = "goimports"

" more hight-light
let g:go_highlight_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_function_calls = 1

" ctril-p
" """"""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim

" deoplete
" """"""""""""""""
" call deoplete#enable()
let g:deoplete#enable_at_startup = 1
" single Esc to enter Normal mode
:inoremap <Esc> <Esc><Esc>

" tagbar
" """"""""""""""""
let g:tagbar_autofocus = 0

" ===================================================================
" BEHAVIOURS 
" ===================================================================

" Make backspace works in insert mode
set backspace=2

" autoindent
set autoindent
"set smartindent
" set cindent

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" search smartcase
" this will make search with at least one capital to be case-sensitive
" while search with all lower case will be case-insensitive
set ignorecase
set smartcase

" disable auto indent when pasting
set nopaste

" ===================================================================
" SETTINGS 
" ===================================================================
" make buffer modifiable
" set modifiable

" set hidden: allow hidden buffer to be switched
set hidden
set conceallevel=0
