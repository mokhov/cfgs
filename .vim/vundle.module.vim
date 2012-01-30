filetype on             " fix for $? == 1
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'tpope/vim-git.git'
" Bundle 'tpope/vim-surround'
Bundle 'msanders/snipmate.vim'
Bundle 'edsono/vim-matchit'
Bundle 'altercation/vim-colors-solarized'
Bundle 'othree/html5.vim'
Bundle 'mileszs/ack.vim.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'nathanaelkane/vim-indent-guides.git'
Bundle 'bronson/vim-trailing-whitespace.git'
Bundle 'digitaltoad/vim-jade'
" Bundle 'Townk/vim-autoclose'
" Bundle 'sjl/gundo.vim'            " Python support needed


" NERDCommenter provides a bunch of key mapping for working with comments in a
" very fast and efficient manner
"   Homepage: https://github.com/scrooloose/nerdcommenter
Bundle 'ddollar/nerdcommenter.git'


" Full path fuzzy file, buffer and MRU file finder for Vim
"   Usage: <c-p> or run :CtrlP
"   Homepage: https://github.com/kien/ctrlp.vim
Bundle 'kien/ctrlp.vim'


" This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
"   Homepage: https://github.com/Raimondi/delimitMate
Bundle 'Raimondi/delimitMate'

" Intelligently closes the html tags based of the currently open tag
"   Usage: it is triggered when you type "</"
"   Homapage: https://github.com/docunext/closetag.vim
Bundle 'docunext/closetag.vim'

" Vimscript for Github:Gist
"   Usage: :Gist
"   Homepage: https://github.com/vim-scripts/Gist.vim
Bundle 'vim-scripts/Gist.vim'

" Vim like WriteRoom
"   Usage: :VimroomToggle
"   Homepage: http://projects.mikewest.org/vimroom/
Bundle 'mikewest/vimroom'

" The ultimate vim statusline utility
"   Homepage: https://github.com/Lokaltog/vim-powerline
Bundle 'Lokaltog/vim-powerline'

Bundle 'Lokaltog/vim-distinguished'

Bundle 'viewdoc'


" See later
" ---------
" Bundle 'ervandew/supertab'
" Bundle 'int3/vim-taglist-plus'
" Bundle 'majutsushi/tagbar'    " - works
" http://sjl.bitbucket.org/gundo.vim/#installation

" Sources:
"   http://mirnazim.org/writings/vim-plugins-i-use/
