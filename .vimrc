set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'herringtondarkholme/yats.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme desert

set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set hidden              " hide buffers
set clipboard=unnamedplus
set completeopt-=preview " Disable YCM preview popup

let g:go_disable_autoinstall = 1
let g:go_template_autocreate = 0
let g:ycm_auto_trigger = 0
let g:ycm_add_preview_to_completeopt = 0

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'gotype']

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,typescript AutoFormatBuffer clang-format
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType python AutoFormatBuffer yapf
augroup END
