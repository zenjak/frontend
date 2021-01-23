" vimwiki required settings
set nocompatible
filetype plugin on
syntax on

" map F9 to run the file through python console
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" install plugins
call plug#begin()
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
call plug#end()

" Material UI color theme
let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1
colorscheme material

" vimwiki default to md
let g:vimwiki_list = [{ 'path': '/mnt/c/Users/jack_/Documents/vimwiki/',
       \ 'syntax':'markdown', 'ext': '.md' }]
" vimwiki uses full extension so it works on github and others
let g:vimwiki_markdown_link_ext = 1


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

" Allow changing windows when in terminal
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

" default with line numbers on
set number

set clipboard=unnamed
