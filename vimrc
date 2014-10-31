set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'fatih/vim-go'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Keithbsmiley/investigate.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()

set t_Co=256
set background=dark
let base16colorspace=256 
colorscheme base16-default

set noesckeys
set noerrorbells

set number
set relativenumber
set cursorline

set noswapfile
set nobackup
set encoding=utf-8
set autowrite
set undofile
set undodir=~/.vim/undodir

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap

set hlsearch
set ignorecase
set smartcase
set whichwrap=b,s,h,l,<,>,[,] 

set wildmode=list:longest,full
set wildignore+=.hg,.git,.svn                    
set wildignore+=*.aux,*.out,*.toc                
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest 
set wildignore+=*.spl                            
set wildignore+=*.sw?                            
set wildignore+=*.DS_Store                       
set wildignore+=*.luac                           
set wildignore+=migrations                       
set wildignore+=go/pkg                      
set wildignore+=go/bin                      
set wildignore+=go/bin-vagrant              
set wildignore+=*.pyc                       
set wildignore+=*.orig                      

set completeopt-=preview

set clipboard=unnamed
set mouse=a
set ttymouse=xterm2

let mapleader=","

" == Airline ==
let g:airline_powerline_fonts = 1

" == CtrlP ==
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_use_caching = 0

" == YouCompleteMe ==
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" == SuperTab ==
let g:SuperTabDefaultCompletionType = '<C-n>'

" == UtiliSnips ==
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" == vim-go ==
let g:go_fmt_command = "goimports"

" == investigate ==
let g:investigate_use_dash = 1

" == tagbar ==
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

augroup myvimrc
	au!
	au BufWritePost .vimrc so $MYVIMRC
augroup END
