
" Set the default coloscheme to gruvbox
colorscheme gruvbox

" Set the theme
set background=dark

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line horizontaly.
set cursorline

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.gch,*.out

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'

call plug#end()


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

let mapleader = "!"

inoremap  <esc>:w<CR>i

inoremap <c-q> <esc>:w<CR>:q<CR>

autocmd FileType c inoremap <buffer> for<tab> for(int i=0; i < N; i++) {

autocmd FileType c inoremap <buffer> stru<tab> typedef struct _ _;<CR>struct _ {<CR><CR>};<up><up><up><c-right><c-right><right>

autocmd FileType js inoremap <buffer> fun<tab> function () {<CR><CR>}<up><up><c-right>

autocmd FileType py inoremap <buffer> def<tab> def ()->null:<left><c-left><left><left><c-left>

autocmd FileType py inoremap <buffer> for<tab> for (i in range()):<left><left><left>

inoremap ( ()<left>

inoremap [ []<left>

inoremap " ""<left>

inoremap { {<CR><CR>}<up> 

inoremap , ,<space>

inoremap <c-z> <esc>ui

inoremap <s-left> <esc>v<left>
vnoremap <s-left> <left>

inoremap <s-right> <esc>v<right>
vnoremap <s-right> <right>

inoremap <s-up> <esc>v<up>
vnoremap <s-up> <up>

inoremap <s-down> <esc>v<down>
vnoremap <s-down> <down>

nnoremap <CR> i
nnoremap <backspace> i<backspace>

nnoremap <leader>q :w<CR>:q<CR>:q<CR>

nnoremap  :w<CR>

vnoremap " c"<esc>pi<right>"

vnoremap ( c(<esc>pi<right>)

vnoremap [ c[<esc>pi<right>]

vnoremap { c{<esc>pi<right>}

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <leader>e :NERDTreeToggle<cr>

let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$', '\.h.gch$', '\.out$']

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

