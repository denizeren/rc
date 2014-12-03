execute pathogen#infect()
syntax on
filetype plugin indent on

set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set hidden              " hide buffers

let g:NERDTreeDirArrows = 0 " character problems fixed in nerdtree
let g:go_disable_autoinstall = 1

" Quit NERDTree if it is last buffer
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction

" If window is not wide enough do not start NERDTree and Tagbar
if (winwidth(0) > 160)
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    autocmd VimEnter * Tagbar
    autocmd WinEnter * call NERDTreeQuit()
endif
