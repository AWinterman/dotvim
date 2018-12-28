set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

" Required
Bundle 'gmarik/vundle'

" Vundle bundles
Bundle 'bracki/vim-prometheus'
Bundle 'tpope/vim-fugitive'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'airblade/vim-gitgutter'
Bundle 'nvie/vim-flake8'
Bundle 'sjl/gundo.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tomtom/tcomment_vim'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'rhysd/vim-gfm-syntax'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'nathanielc/vim-tickscript'
Plugin 'fatih/vim-go'
Bundle 'uarun/vim-protobuf'
Bundle 'vim-scripts/vim-auto-save'
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'tpope/vim-unimpaired'
Plugin 'maralla/completor.vim'
Plugin 'Yggdroot/indentLine'

set nocompatible

let g:indentLine_setConceal = 0

let g:auto_save = 1
set autowrite
let g:go_fmt_autosave = 0


let g:ctrlp_map = '<c-t>'

let g:gundo_prefer_python3 = 1


let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_standard_exec = 'standard'
let g:syntastic_javascript_standard_generic = 1
set statusline+=%#warningmsg#
set statusline+=%*

set clipboard^=unnamed


set ruler                      " show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set breakindent
set smartindent
set autoindent

" autocmd bufwritepost *.js silent !standard % --format > /dev/null 2> /dev/null
set autoread

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
autocmd FileType netrw setl bufhidden=delete


"Lots of folding
set foldmethod=indent
set foldlevel=99

"control + direction instead of c+w + direction
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <leader>e :Explore<CR>

noremap <D-}> gt
noremap <D-{> gT

" for when there's no wordwrap.
noremap j gj
noremap k gk

"Easy access to Gundo.
noremap <leader>g :GundoToggle<CR>

noremap <leader>mp :!markdown-preview %&<CR>

"general
syntax enable
filetype on
filetype plugin indent on

"Search highlighting and autocomplete
set hlsearch
set incsearch
" set ignorecase

noremap <leader>h :nohl<return>
vnoremap <leader>h :nohl<return>

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


"line limits:
set tw=80
set colorcolumn=81

set background=dark
colorscheme solarized

let g:indent_guides_guide_size = 1

set hidden
set rnu
set backspace=indent,eol,start

set whichwrap+=<,>,h,l,[,]


" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

"font and linespace
set linespace=2

set mouse=a

"using vim as mah pager
let $PAGER=''

"paste:
nmap <leader>p :setlocal paste! paste?<cr>

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun


set nobackup
set nowritebackup
set backupdir=~/tmp
set noswapfile

set expandtab

set wildmenu

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

:set tabstop=4
:set shiftwidth=4
:set expandtab

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
