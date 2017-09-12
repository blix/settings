set nocompatible
set lazyredraw
set guioptions-=T
" set completeopt=longest,menuone
set clipboard=autoselect
set switchbuf=usetab,newtab
set hidden
set autochdir
set ttyfast
set nocursorline
set nocursorcolumn
set norelativenumber
syntax sync minlines=256
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

syn on

set nu
set nowrap

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set magic

" set ruler
" set rulerformat=%60(%t%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set colorcolumn=80

set hlsearch
set incsearch
set ignorecase
set smartcase

set t_Co=256
set mouse=a

set autochdir

set background=dark
set scrolloff=2
colorscheme mirodark
hi Normal guibg=black

com! JSON %!python2.7 -m json.tool
com! Fourtab :set ts=2 noet | retab! | set et ts=4 | retab

noremap <expr> <silent> <Home> col('.') == match(getline('.'), '\S') + 1 ? '0' : '^'
imap <silent> <Home> <Esc><Home>i

nnoremap <C-S-tab> :bN<CR>
nnoremap <C-tab> :bn<CR>
nnoremap <C-Home> :bN<CR>
nnoremap <C-End> :bn<CR>
nnoremap <C-t> :lcd %:p:h<CR>:tabnew .<CR>
nnoremap <C-w> :bd<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-n> :enew<CR>
nnoremap <C-f> /
nnoremap <F3> n
nnoremap <S-F3> N
nnoremap <C-F3> #
nnoremap <C-a> ggVG
nnoremap <C-c> y
nnoremap <C-v> :set paste<CR>P:set nopaste<CR>
nnoremap <C-x> d
nnoremap <C-z> u
nnoremap <C-S-Left> v<S-Left>
nnoremap <C-S-Right> v<S-Right>
nnoremap <S-Left> v<Left>
nnoremap <S-Right> v<Right>
nnoremap <C-Left> <S-Left>
nnoremap <C-Right> <S-Right>
nnoremap <S-Up> v<Up>
nnoremap <S-Down> v<Down>
" nnoremap <C-o> :e .<CR>
" set pastetoggle=<C-p>

vnoremap <C-c> y
vnoremap <C-x> d
vnoremap <C-v> pgv
vnoremap <S-Down> <Down>
vnoremap <S-Up> <Up>
vnoremap <C-S-Right> <S-Right>
vnoremap <C-S-Left> <S-Left>
vnoremap <S-Right> <Right>
vnoremap <S-Left> <Left>
vnoremap <S-Down> <Down>
vnoremap <S-Up> <Up>

inoremap <C-S-tab> <ESC>:bN<CR>
inoremap <C-tab> <ESC>:bn<CR>
inoremap <C-Home> <Esc>:bN<CR>i
inoremap <C-End> <Esc>:bn<CR>i
inoremap <C-t> <ESC>:lcd %:p:h<CR>:tabnew .<CR>
inoremap <C-w> <ESC>:bd<CR>
inoremap <C-s> <ESC>:w<CR>i
nnoremap <C-n> <ESC>:enew<CR>i
inoremap <C-f> <ESC>/
inoremap <F3> <ESC>ni
inoremap <S-F3> <ESC>Ni
inoremap <C-F3> <ESC>#i
inoremap <C-a> <ESC>ggVG
inoremap <C-c> <ESC>yi
inoremap <C-v> <ESC>:set paste<CR>p:set nopaste<CR>i
inoremap <C-x> <ESC>di
inoremap <C-z> <ESC>ui
inoremap <C-r> <ESC><C-r>i
inoremap <S-Left> <ESC><Left>v<Left>
inoremap <S-Right> <ESC>v<Right>
inoremap <C-Left> <S-Left>
inoremap <C-Right> <S-Right>
inoremap <C-S-Left> <ESC><Right>v<S-Left>
inoremap <C-S-Right> <ESC><Right>v<S-Right>
inoremap <S-Up> <ESC>v<Up>
inoremap <S-Down> <ESC>v<Down>
inoremap <C-o> <ESC>:CtrlPMixed<CR>

" inoremap <expr> <C-Space> <C-p><Down>
" inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
"             \ "\<lt>C-n>" :
"             \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
"             \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
"             \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:100'
let g:ctrlp_regexp = 1
set wildignore+=*.pyc,*.o,*.so,*.a,*.d

set runtimepath^=~/.vim/bundle/fugitive.vim
set diffopt+=vertical

set runtimepath^=~/.vim/bundle/airline.vim
set laststatus=2
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline#extensions#whitespace#checks = [ 'indent' ]
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set guifont=Terminus\ 10
