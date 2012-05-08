" This is standard pathogen and vim setup
set nocompatible
"pathogen
call pathogen#infect() 
call pathogen#runtime_append_all_bundles()

"general
syntax on
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

colorscheme molokai
let g:molokai_original=1


"font and linespace
set guifont=Ubuntu\ Mono:h14
set linespace=2

set t_Co=256 

