set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
"set mouse=a
"=== VIEW ===
set visualbell
set number
set ruler
set title
set wrap
set cursorline
set linebreak
set showmatch
set background=dark
set guifont=NanumGothicCoding:h12:cHANGEUL

"=== SEARCH ===
set nowrapscan
set hlsearch
set ignorecase
set incsearch

"=== EDIT ===
set backspace=eol,start,indent
set history=1000
set fencs=ucs-bom,utf-8,euc-kr,latin1
set fileencoding=utf-8
set nobackup

"<=== VUNDLE config Start ===>
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle'
call vundle#begin(path)
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
Plugin 'The-NERD-Tree'
Plugin 'Shougo/unite.vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'
Plugin 'Tagbar' 
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
nmap <F4> :NERDTreeToggle<CR>
nmap <F5> :Tagbar<CR>
nmap <F9> :cs find s <C-R>=expand("<cword>")<CR><CR>

call vundle#end()
filetype plugin indent on
"<=== VUNDLE config End ===>

"=== VIM-AIRLINE ===
set laststatus=2

"=== COLOR SCHEME ===
syntax on
syntax enable
"colorscheme candycode
"colorscheme molokai
"colorscheme solarized

"ctags
set tags=./tags
"cscpoe
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
if filereadable("./cscope.out")
    cs add cscope.out
else
    cs add /usr/src/linux/cscope.out
endif
set csverb

"filetype plugin on
set tags+=/home/santony/artik-api/samihub-artik-api-98a50b146f1e/api/inc

"============== 주석 매크로 ==============
func! CmtOn()    "주석 on
exe "'<,'>norm i//"
endfunc


func! CmtOff()    "주석 off
exe "'<,'>norm 2x"
endfunc

vmap <c-c> <esc>:call CmtOn() <cr>
vmap <c-x> <esc>:call CmtOff() <cr>
nmap <c-c> <esc>v:call CmtOn() <cr>
nmap <c-x> <esc>v:call CmtOff() <cr>

colorscheme PaperColor
