set nocompatible

syn on

set nu
set nowrap

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

set ruler
set rulerformat=%60(%t%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set colorcolumn=80

set hlsearch
set incsearch
set ignorecase
set smartcase

set t_Co=256
set mouse=a

set autochdir

colorscheme darkbone

let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = "<s-c-space>"
let g:SuperTabMappingTabLiteral = "<tab>"

com! JSON %!python2.7 -m json.tool

nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-t> :lcd %:p:h<CR>:tabnew .<CR>
nnoremap <C-w> :tabclose<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-f> /
nnoremap <F3> n
nnoremap <S-F3> N
nnoremap <C-c> y
nnoremap <C-v> p
nnoremap <C-x> d
nnoremap <C-z> u
nnoremap <C-S-Left> v<S-Left>
nnoremap <C-S-Right> v<S-Right>
nnoremap <C-S-Up> v<Up>
nnoremap <C-S-Down> v<Down>

vnoremap <C-c> y
vnoremap <C-x> d
vnoremap <C-v> p
vnoremap <C-S-Down> <Down>
vnoremap <C-S-Up> <Up>
vnoremap <C-S-Right> <Right>
vnoremap <C-S-Left> <Left>

inoremap <C-S-tab> <ESC>:tabprevious<CR>
inoremap <C-tab> <ESC>:tabnext<CR>
inoremap <C-t> <ESC>:tabnew<CR>:NERDTree<CR>
inoremap <C-w> <ESC>:tabclose<CR>
inoremap <C-s> <ESC>:w<CR>i
inoremap <C-f> <ESC>/
inoremap <F3> <ESC>ni
inoremap <S-F3> <ESC>Ni
inoremap <C-c> <ESC>yi
inoremap <C-v> <ESC>pi
inoremap <C-x> <ESC>di
inoremap <C-z> <ESC>ui
inoremap <C-r> <ESC><C-r>i
inoremap <C-S-Left> <ESC>v<S-Left>
inoremap <C-S-Right> <ESC>v<S-Right>
inoremap <C-S-Up> <ESC>v<Up>
inoremap <C-S-Down> <ESC>v<Down>

