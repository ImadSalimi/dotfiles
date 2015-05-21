" Always show status line
set laststatus=2
" Enablee 256-colors mode
set t_Co=256

" Source .vimrc after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc :source $MYVIMRC
endif

" Color scheme
colorscheme railscasts

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Set indents to be of width 4
set tabstop=4
set softtabstop=4

" Show line numbers
set nu

"===================
" Mappings
"===================
" Unmap arroy keys
no <up> ddkP
no <right> <Nop>
no <down> ddp
no <left> <Nop>

ino <up> <Nop>
ino <right> <Nop>
ino <down> <Nop>
ino <left> <Nop>

" Center screen on movements
map n nzz
map N Nzz
map G Gzz

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Change focus between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Toggle 'set list'
map <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
