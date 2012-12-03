" This is standard pathogen and vim setup
set nocompatible
"pathogen
"
filetype on
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
call pathogen#helptags()
call pathogen#infect() 
call pathogen#runtime_append_all_bundles()


"Lots of folding
set foldmethod=indent
set foldlevel=99

"control + direction instead of c+w + direction
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

"noremap Y "+y

"Easy access to Gundo. I'll have to explore this at some point soon, it looks
"really cool.
noremap <leader>g :GundoToggle<CR>

"python settings
au FileType py setlocal comments-=:# comments+=:#
let g:slime_target = "tmux"

"
"general
syntax on
filetype on
filetype plugin indent on

" Here's the vimclojure stuff. You'll need to adjust the NailgunClient
" setting if you're on windows or have other problems.
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"
let vimclojure#SplitPos = "right"
let vimclojure#SplitSize = 80
let vimclojure#UseErrorBuffer = 0


"Search highlighting and autocomplete
set hlsearch
set incsearch
set smartcase

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

set guioptions-=r
"" set number:
let g:solarized_termcolors=255
set fillchars+=vert:\ 

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

set tabstop=4 
set shiftwidth=4 
set shiftwidth=4
set expandtab

"line limits:
set tw=79

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match Error /\%80v.\+/ "tells me when I'm over.

set autoindent
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
"set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
let g:indent_guides_guide_size =1 

set ruler


autocmd BufNewFile,BufRead *.json set ft=javascript

noremap <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

set hidden
set nu
set backspace=indent,eol,start



" Things having to do with my r-vim-plugin.
let vimrplugin_underscore=0
"let vimrplugin_r_path =/usr/local/bin/R


" Powerline:
let g:Powerline_symbols = 'compatible'


"font and linespace
set guifont=Ubuntu\ Mono\ for\ Powerline\ 14
set linespace=2


"let molokai_original=0
if has("gui_running")
    "let g:molokai_original=0
    set guioptions=egmt
    set background=light
    "colorscheme molokai
else
    let &t_Co=256
    set mouse=a
endif
colorscheme solarized


"using vim as mah pager
let $PAGER=''

"Nerdtree
let g:NERDTreeWinPos = "right"


