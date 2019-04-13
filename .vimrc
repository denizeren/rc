execute pathogen#infect()
syntax on
filetype plugin indent on
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
