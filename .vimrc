" File: .vimrc
" Author: Georgiy Mostolovitsa (gfranco)
" Last Modified: 02.04.2011


" Common
set nocompatible
set autoread

set backup
set backupdir=/tmp
set directory=/tmp


" Editor
set nowrap
set undolevels=100
set backspace=indent,eol,start whichwrap+=<,>,[,]

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set ignorecase
set hlsearch
set incsearch
set showmatch
set smartcase

set autoindent
set smartindent

set pastetoggle=<C-v>

set nofoldenable

set splitright
set splitbelow

" UI
set number
set foldcolumn=0
set showtabline=0

set laststatus=2
set statusline=%t%M%R\ %P

set scrolljump=7

set novisualbell        " выключаем бибиканье и мигание
set t_vb=   
set wildmenu


" Keyboard
map <C-w>v :vertical wincmd f<CR>
imap <C-_> <C-X>/
let mapleader=","


" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r

so ~/.vim/vundle.module.vim
so ~/.vim/colors.module.vim

filetype plugin indent on

" Plugins
let g:indent_guides_guide_size=1

let g:tagbar_ctags_bin="/Users/gfranco/.local/bin/ctags"

au BufNewFile,BufRead *.bemhtml set filetype=javascript
au BufNewFile,BufRead *.scss set filetype=css

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif


" DEMO!!11

" F7 opens documentation for function under cursor
function! BrowseDoc()
    if b:current_syntax == "php"
        ! open http://ch2.php.net/manual-lookup.php?pattern=<cword>
    elseif b:current_syntax == "perl"
        ! open http://perldoc.perl.org/search.html?q=<cword>
    elseif b:current_syntax == "cpp"
          let cname = tolower(cword);
        ! open file:///opt/qt-4.3.4/doc/html/<cname>
    else
        echo "Hello"
    endif
endfunction
map <F7> :call BrowseDoc()

let g:Powerline_symbols="fancy"
let g:Powerline_cache_file=$HOME . "/.vim/Powerline.cache"

" Don't use the terminal's horrible secondary screen
" set t_ti= t_te=
