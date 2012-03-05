" File: .vimrc
" Author: Oleg Mokhov (mokhov)
" Thanks2: Georgiy Mostolovitsa (gfranco), Igor Spisivtsev (garris), Vyacheslav Oliyanchuk (miripiruni)
" Last Modified: 31.01.2012


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
set relativenumber
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

" let g:tagbar_ctags_bin="/Users/gfranco/.local/bin/ctags"

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
"
set cursorline

" Don't copy text, replaced by pasted
vmap p "_dp
vmap P "_dP


let delimitMate_expand_cr = 1
set backspace=indent,eol,start

map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

map <C-a> :%s/\s\+$//g<CR>

map —ë `
map –π q
map —Ü w
map —É e
map –∫ r
map –µ t
map –Ω y
map –≥ u
map —à i
map —â o
map –∑ p
map —Ö [
map —ä ]
map —Ñ a
map —ã s
map –≤ d
map –∞ f
map –ø g
map —Ä h
map –æ j
map –ª k
map –¥ l
map –∂ ;
map —ç '
map —è z
map —á x
map —Å c
map –º v
map –∏ b
map —Ç n
map —å m
map –± ,
map —é .
map –Å ~
map –ô Q
map –¶ W
map –£ E
map –ö R
map –ï T
map –ù Y
map –ì U
map –® I
map –© O
map –ó P
map –• {
map –™ }
map –§ A
map –´ S
map –í D
map –ê F
map –ü G
map –† H
map –û J
map –õ K
map –î L
map –ñ :
map –≠ "
map –Ø Z
map –ß X
map –° C
map –ú V
map –ò B
map –¢ N
map –¨ M
map –ë <
map –Æ >
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >



set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
