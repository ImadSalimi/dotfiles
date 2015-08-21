"===================
" General Settings
"===================
" Always show status line
set laststatus=2
" Enable 256-colors mode
set t_Co=256

" Source .vimrc after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc :source $MYVIMRC
endif

"===================
" Color Schemes
"===================
syntax enable
colorscheme beekai

"===================
" Plugins
"===================
" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" YCM c++ Syntax
let g:cpp_class_scope_highlight=1

"===================
" Visual settings
"===================
" Set indents to be of width 4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Better indentation
set autoindent
set smartindent
set cindent

" Set php files type to html for correct indentation
" autocmd filetype php :set ft=html

" Show line numbers
set nu

" Highlight search
set hls

"===================
" Mappings
"===================
" Unmap arrow keys
no <up> ddkP
no <right> <Nop>
no <down> ddp
no <left> <Nop>

" Center screen on movements
map n nzz
map N Nzz
map G Gzz
map { {zz
map } }zz

" Change focus between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Toggle 'set list'
set list
map <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
