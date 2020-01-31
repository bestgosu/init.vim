set encoding=utf-8

set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'

"ripgrep install nessesary by choco
"Plugin 'jremmen/vim-ripgrep'
"Plugin 'milkypostman/vim-togglelist'
"toggle quickfix location list ,q ,l

"syntax
Plugin 'leafgarland/typescript-vim'
Plugin 'valloric/youcompleteme'

Plugin 'statico/vim-javascript-sql'
Plugin 'jparise/vim-graphql'
Plugin 'digitaltoad/vim-jade'
Plugin 'fatih/vim-go'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'rosenfeld/conque-term'

Plugin 'shougo/deoplete.nvim'

Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'


"Plugin 'mileszs/ack.vim'
Plugin 'gabesoft/vim-ags'
"Plugin 'shougo/unite.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'powerline/powerline'
"Plugin 'ivanov/vim-ipython'
Plugin 'jupyter-vim/jupyter-vim'
call vundle#end()        

colorscheme darkblue
set ic
se nu

set incsearch

set ts=4
set sw=4
set sts=4

let mapleader=","
"toggle quickfix location list ,q ,l
"nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
"nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>
"
vnoremap f y:cd %:p:h<CR>:Rg "<C-r>""<CR>
nmap <silent> <leader>, :cn<CR>
nmap <silent> <leader>m :cp<CR>


map <F1> :cd %:p:h<cr>:NERDTreeFind<cr>
map <F2> :cd %:p:h<cr>:silent !start cmd<cr>
map <F3> :cd %:p:h<cr>:silent !start explorer %:p:h<cr>

let g:ctrlp_cmd = "CtrlPMRUFiles"

let g:rg_highlight = "true"


vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion=['<C-p>']

"let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_filetype_blacklist = {}


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


let g:ags_agexe = 'pt'

let g:ags_agargs = {
  \ '--column'         : ['', ''],
  \ '--line-number'    : ['', ''],
  \ '--context'        : ['g:ags_agcontext', '-C'],
  \ '--max-count'      : ['g:ags_agmaxcount', ''],
  \ '--heading'        : ['',''],
  \ '--smart-case'     : ['','-S'],
  \ '--color'          : ['always',''],
  \ '--colors'         : [['match:fg:green', 'match:bg:black', 'match:style:nobold', 'path:fg:red', 'path:style:bold', 'line:fg:black', 'line:style:bold'] ,''],
  \ }


autocmd BufRead scp://* :set bt=acwrite

let maplocalleader=","
nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

nnoremap <buffer> <silent> <localleader>U :JupyterUpdateShell<CR>

" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
