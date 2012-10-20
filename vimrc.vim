" This is standard pathogen and vim setup
set nocompatible
"pathogen
call pathogen#infect() 
call pathogen#runtime_append_all_bundles()


"Lots of folding
set foldmethod=indent
set foldlevel=99

"control + direction instead of c+w + direction
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


"Easy access to Gundo. I'll have to explore this at some point soon, it looks
"really cool.
map <leader>g :GundoToggle<CR>


"Mak sure code is pep8:

"autocompletion settings:
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"

"Enable menu and pydoc preview
filetype on
filetype on
set completeopt=menuone,longest,preview

au FileType py setlocal comments-=:# comments+=:#


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
set pastetoggle=<F2>



"" set number:
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

set tabstop=4 
set shiftwidth=4 
set shiftwidth=4
set expandtab

"line limits:
set tw=79
set autoindent
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
let g:indent_guides_guide_size =1 

set ruler


autocmd BufNewFile,BufRead *.json set ft=javascript

map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

"status bar
" Some information is always good...
set showfulltag
set showcmd
set wildmenu
set laststatus=2
"set statusline=%f%=\ %Y\ %c%V,%l/%L\ %P\ [%M%n%W]:%{tabpagenr()}/%{tabpagenr('$')}

" ...but not too much
set report=0
set shortmess+=asWAI
set showtabline=0
set noshowmode
"

" for MiniBuffExplorer
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplorerAutoUpdate= 1
"
set hidden
set nu
set backspace=indent,eol,start



" Things having to do with my r-vim-plugin.
let vimrplugin_underscore=0
"let vimrplugin_r_path =/usr/local/bin/R


" Powerline:
let g:Powerline_symbols = 'fancy'


"font and linespace
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12
set linespace=2





"let molokai_original=0
if has("gui_running")
    "let g:molokai_original=0
    set guioptions=egmrt
    set background=light
    "colorscheme molokai
else
    let &t_Co=256
endif
colorscheme solarized
