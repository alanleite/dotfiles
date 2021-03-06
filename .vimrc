set encoding=utf-8

let g:ale_fix_on_save = 1
let g:ale_fixers = {
  \ 'javascript': ['eslint', 'prettier-standard']
  \ }

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer' }
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'

call plug#end()

let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set number
set termguicolors
syntax on
colorscheme nord
