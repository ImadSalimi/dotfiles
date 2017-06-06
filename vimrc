"the following simply creates an ambiguous mapping so vim fully
"processes the escape sequence for terminal keys, see 'ttimeout' for a
"rough explanation, this just forces it to work
if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
  inoremap <silent> <C-[>OC <RIGHT>
endif
"===================
" General Settings
"===================
" Relative line numbers
set relativenumber
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
set background=dark
colorscheme solarized

"===================
" Plugins
"===================
""" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

""" Toggle NERDTree
map <C-s> :NERDTreeToggle<CR>

""" Neosnippet key-mappings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet/snippets'

""" CtrlSpace
set nocompatible
set hidden
set showtabline=0

""" Powerline
" set rtp+=$HOME/anaconda3/lib/python3.6/site-packages/powerline/bindings/vim

""" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']

""" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'

""" Undotree
nnoremap <F5> :UndotreeToggle<CR>

"===================
" Visual settings
"===================
" Set tabs and indents to be of width 4
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Better indentation
set smartindent
set autoindent

" Set indent for some specific filetypes
au filetype python\|css\|jade\|sass set sw=2 ts=2 sts=2 et

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

" Tab movement
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
