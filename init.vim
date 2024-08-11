let mapleader="\<Space>"
let maplocalleader="m"
set shell=bash
inoremap <C-k> <ESC>
tnoremap <C-k> <C-\><C-n>
nnoremap <silent>gr :tabprevious<CR>
nnoremap <silent><ESC><ESC> :nohlsearch<CR>

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

augroup MyAutoCmd
    autocmd!
augroup END

" Undo
if has('persistent_undo')
  let undo_path = expand('~/.cache/undo')
  if !isdirectory(undo_path)
	call mkdir(undo_path, "p")
  endif
  exe 'set undodir=' .. undo_path
  set undofile
endif

" Font
let &guifont = 'PlemolJP35 Console NF:h18'

if has('termguicolors')
  set termguicolors
endif

" Config
set number
set title
set cursorline
set hidden
set splitbelow
set helpheight=25
set iminsert=1
set ambiwidth=single
set pumblend=20

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indent
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Encoding
set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,sjis,euc-jp
set fileformats=unix,dos,mac

exe('source ' . stdpath('config') . '/dein.vim')
