":set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
"set number
"set rtp+=/home/d/go/src/golang.org/x/lint/misc/vim

"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
                                          
if has('folding')
  if has('windows')
    set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif


nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

call plug#begin()
Plug 'fatih/vim-go', { 'build': ':GoInstallBinaries' }
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
call plug#end()
"set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

