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

let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
nnoremap <leader>tl :TlistToggle<CR>
inoremap <leader>tl :TlistToggle<CR>
vnoremap <leader>tl :TlistToggle<CR>

nnoremap <leader>t :CommandT<CR>
inoremap <leader>t :CommandT<CR>
vnoremap <leader>t :CommandT<CR>


"use ack instead of grep
set grepprg=ack

set ruler                      " show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set showcmd                    " show partial commands in status line and





"Lots of folding
set foldmethod=indent
set foldlevel=99

"control + direction instead of c+w + direction
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

"Easy access to Gundo.
noremap <leader>g :GundoToggle<CR>

"python settings
au FileType py setlocal comments-=:# comments+=:#

map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map <Leader>a :SlimuxShellLast<CR>

noremap <c-G> :Gcommit<CR>
vnoremap <c-G> :Gcommit<CR>
inoremap <c-g> :Gcommit<CR>



let slimux_python_allowed_indent0=1

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
noremap <leader>h :nohl<return>
vnoremap <leader>h :nohl<return>
inoremap <leader>h :nohl<return>

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
set linespace=2


"let molokai_original=0
if has("gui_running")
    "let g:molokai_original=0
    set guioptions=egmt
    set background=dark
    set guifont="Inconsolata-dz for\ Powerline\ 14"
    colorscheme lucius 
    "colorscheme molokai
else
    let &t_Co=256
    set mouse=a
    set background=dark
    colorscheme solarized
endif
let g:Powerline_symbols = "fancy"



"using vim as mah pager
let $PAGER=''

"Nerdtree
let g:NERDTreeWinPos = "right"
noremap <leader>n :NERDTreeToggle<CR>

"Snippets settings:
let g:snips_author = "Andrew Winterman"


"keeping closetags from being overzealous:
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source~/.vim/bundle/closetag/plugin/closetag.vim


"paste:
nmap <leader>p :setlocal paste! paste?<cr>
nmap gv `[v`]

"

