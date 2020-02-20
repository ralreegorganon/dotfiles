call plug#begin(stdpath('data') . '/plugged')

Plug 'chriskempson/base16-vim'
Plug 'liuchengxu/vim-better-default'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme base16-default-dark

let mapleader=","

" == vim-better-default ==

let g:vim_better_default_backup_on = 1
let g:vim_better_default_persistent_undo = 1

" == vim-easymotion ==

" Remap to a single leader (default is a double leader)
map <Leader> <Plug>(easymotion-prefix)

" Disable default mappings
let g:EasyMotion_do_mapping = 0

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" Move to character
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" == vim-airline ==

let g:airline_powerline_fonts = 1

" == vim-airline-themes ==
let g:airline_theme='base16_default'
