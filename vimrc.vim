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
set expandtab


"Easy access to Gundo. I'll have to explore this at some point soon, it looks
"really cool.
map <leader>g :GundoToggle<CR>

"Mak sure code is pep8:
let g:pep8_map='<leader>8'

"autocompletion settings:
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"Enable menu and pydoc preview
filetype on
filetype on
set completeopt=menuone,longest,preview

"nerdtree:
map <leader>n :NERDTreeToggle<CR>

"RopeTree
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>






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

"" set number:
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set nocompatible
set tabstop=4 
set shiftwidth=4  
set ruler


set autoindent

"status bar
" Some information is always good...
set showfulltag
set showcmd
set wildmenu
set laststatus=2
set statusline=%f%=\ %Y\ %c%V,%l/%L\ %P\ [%M%n%W]:%{tabpagenr()}/%{tabpagenr('$')}

" ...but not too much
set report=0
set shortmess+=asWAI
set showtabline=0
set noshowmode
"

" for MiniBuffExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Things having to do with my r-vim-plugin.
let vimrplugin_underscore=0

" vimsh 
map \sh :source ~/bin/vimsh/vimsh.vim
 



"font and linespace
set guifont=Ubuntu\ Mono:h14
set linespace=2

set t_Co=256 

colorscheme molokai

let g:molokai_original=1
