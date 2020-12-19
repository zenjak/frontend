" map F9 to run the file through python console
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" install plugins
call plug#begin()
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
call plug#end()

" vimwiki required settings
set nocompatible
filetype plugin on
syntax on

" vimwiki default to md
"let g:vimwiki_list = [{ 'path': '~/Documents/notes/',
"       \ 'syntax':'markdown', 'ext': '.md' }]

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

" make vim changes persist after closing a file
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif

" wrap words in quotations
:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P

" yank to system clipboard
set clipboard=unnamedplus
