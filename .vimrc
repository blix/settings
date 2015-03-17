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

colorscheme darkbone

let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = "<s-c-space>"
let g:SuperTabMappingTabLiteral = "<tab>"

com! JSON %!python2.7 -m json.tool
