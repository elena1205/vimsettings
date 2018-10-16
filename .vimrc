" use vim settings, rather than vi settings. This settings must be as early as
" possible, as it has side effects.
set nocompatible

" Highlight current line.
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Leader
let mapleader = ";"

set confirm
set showcmd
set ruler


if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

set number
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=80
set colorcolumn=+1

" file type detect 
filetype on
" load plugin via different filetype
filetype plugin on
"
" keyboards shortcuts
nmap lb 0
nmap le $
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nnoremap <Leader>l <C-W>l
nnoremap <Leader>h <C-W>h
nnoremap <Leader>k <C-W>k
nnoremap <Leader>j <C-W>j

" *.cpp and *.h switch
nmap <silent> <Leader>sw :FSHere<CR>

" Tagbar settings
let tagbar_left=1
let tagbar_width=32
let g:tagbar_compact=1
"nnoremap <Leader>ilt :TagbarToggle<CR>
nnoremap <F10> :TagbarToggle<CR>
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'c:classes:0:1',
        \ 'd:macros:0:1',
        \ 'e:enumerators:0:0',
        \ 'f:functions:0:1',
        \ 'g:enumeration:0:1',
        \ 'l:local:0:1',
        \ 'm:members:0:1',
        \ 'n:namespaces:0:1',
        \ 'p:functions_prototypes:0:1',
        \ 's:structs:0:1',
        \ 't:typedefs:0:1',
        \ 'u:unions:0:1',
        \ 'v:global:0:1',
        \ 'x:external:0:1',
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union',
    \ },
    \ 'scope2kind' : {
        \ 'enum'      : 'g',
        \ 'namespace' : 'n',
        \ 'class'     : 'c',
        \ 'struct'    : 's',
        \ 'union'     : 'u'
    \ }
\ }
"
" protodef settings
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
let g:disable_protodef_sorting=0

" NERDTree Settings
nmap <F8> :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="right"
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

" make
nmap <Leader>m :wa<CR>:make -C ./build<CR>:cw<CR>:!./build/main<CR>

" scheme
"set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
autocmd BufWritePost $MYVIMRC source $MYVIMRC


