

#if [ -e /usr/share/terminfo/x/xterm-256color ]; then
export TERM='xterm-256color'
#else
#        export TERM='xterm-color'
#fi
EDITOR="mvim -v"
GITEDITOR="vi"
#alias vim='/Applications/MacVim/MacVim.App/Contents/MacOS/Vim'

PATH=/usr/local/bin:usr/local/Cellar/python/2.7.3/bin:/usr/local/share/python:~/bin:${PATH}

PYTHONPATH=/usr/local/lib/python
PYTHONPATH=$HOME/Documents/scikit-learn:$PYTHONPATH

export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

alias vim="mvim -v"
