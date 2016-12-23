set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdTree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'StanAngeloff/php.vim'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'chrisgillis/vim-bootstrap3-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineset number

syntax enable
colorscheme codeschool 
imap <C-Return> <CR><CR><C-o>k<Tab>
set autoindent

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt=longest,menuone

au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

set relativenumber

" Relative or absolute number lines
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction
nnoremap <C-n> :call NumberToggle()<CR>

set pastetoggle=<F2>

command! W  write

let NERDSpaceDelims=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nmap <c-s> :set nopaste<CR>:w<CR>
imap <c-s> <Esc>:set nopaste<CR>:w<CR>

" ctrl u voor url zonder http://www.domein-subdomein.nl, voor CSS o.a.
nmap <F3> :%s/http.*wp-content/\/wp-content/g<CR>

" Weergeef volledige bestandsnaam onderin
set laststatus=2
set statusline+=%F

nmap <F4> :set ignorecase! ignorecase?

set autoread

" fuzzy finder default current dir
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

nmap <F12> :Matrix<CR>

nnoremap gq  :tabclose<CR>

map nt :NERDTreeToggle<CR>

" links toevoegen, active, hover, focus
nnoremap ltv $r,Ygpbxxa:active,<Esc>Ygpbbciwfocus<Esc>Ygpbbciwhover<Esc>$ciw {
