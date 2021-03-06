" configuration File vim ... !!! !! +> ''''''
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set ts=2
set sw=2
set expandtab
set relativenumber
set laststatus=2
set foldmethod=indent "commands zM: fold All, zR unfold all, za: fold/unfold
set autoindent
set smartindent
set wrap
set breakindent
let &showbreak=' '
set noswapfile
set autoread
" set guifont=Dank\ Mono\ Font:15
set hlsearch
" set incsearch
set noshowmode
set cursorline

set ttyfast


" Terminal configuration
set shell=bash
set splitbelow


call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'franbach/miramare'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'vim-scripts/loremipsum'
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhartington/oceanic-next'
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plug 'patstockwell/vim-monokai-tasty'

Plug 'tpope/vim-fugitive'
call plug#end()

set termguicolors     " enable true colors support
" if exists('+termguicolors')
  " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  " set termguicolors
" endif

" set background=dark
" let g:gruvbox_material_background = "hard"
" let g:gruvbox_material_enable_italic = 1
" colorscheme gruvbox-material
"
"
 
" CORLOR
" set termguicolors
" let g:vim_monokai_tasty_italic = 1 
" colorscheme vim-monokai-tasty
" hi Search guifg=#bada55 guibg=#000000 gui=bold ctermfg=green ctermbg=black cterm=bold



" colorscheme daycula
" let g:daycula_enable_italic = 1
" let g:daycula_cursor = "green"
" let g:daycula_disable_italic_comment = 1
"
"
set background=dark
let g:grubvox_contrast_dark = "hard"
" let g:gruvbox_contrast_light = "hard"
let g:gruvbox_italic = 1
let g:gruvbox_termcolors = 256
" colorscheme onedark

colorscheme gruvbox

" set t_Co=256
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }
" set background=dark


" for vim 8
 " if (has("termguicolors"))
  " set termguicolors
 " endif
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized
"commenter configuration
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
" let g:NERDTreeDirArrowExpandable = '●'
" let g:NERDTreeDirArrowCollapsible = '▶'
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let mapleader=" "
" Airline
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_conceal_nerdtree_brackets = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'
" let g:airline_theme='monokai_tasty'
" let g:airline_theme = "daycula"
" let g:airline_theme='gruvbox_material'
" let g:airline_theme='alduin'
" let g:airline_theme='simple'
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_powerline_fonts = 1
" let g:airline_left_sep = "\uE0C0"
" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" indentLine
" config
nmap <Leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :wq<CR>
nmap <Leader>l :nohlsearch<CR>



"nnoremap <silent> <C-k> :<C-u>nohlsearch<CR><C-l>
"
"
" sintax handlerbars
"
inoremap <C-l> <ESC> 
" inoremap jj <ESC> 

" GIT GUTTER
" let g:gitgutter_git_executable = 'C://Program Files//Git//bin//git.exe'
set updatetime=300

" if('vcon') 
  " set termguicolors
" endif

highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4


" highlight Comment cterm=italic
" highlight htmlArg cterm=italic
" highlight Function cterm=italic
" highlight Type cterm=italic
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

" Snippets
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"


" extraspaces
if &t_Co > 2
  highlight ExtraWhitespace ctermbg=7
  match ExtraWhitespace /\s\+$/
else
  set listchars=trais:~
  set list
endif



" test skeleton files
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
  augroup END
endif


" noremap <A-j> gT
" noremap <A-k> gt

let NERDTreeHijackNetrw=1

" typescript
let g:coc_global_extensions = [ 'coc-tsserver' ]
" inoremap <silent><expr> <C-tab> coc#refresh()

" remap text
inoremap <C-u> <C-o>A
" nnoremap <C-c>j ci"


nnoremap <C-j> <C-w>j<C-W>20-
" Buffers
set hidden
" nmap <silent> <C-l> :bn<cr>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
" nnoremap <A-n> :bnext<CR>:redraw<CR>:ls<CR>

map <C-k> vf{%=

" Termi Config
set termwinsize=10x0

" lehere confiugration JSDOC
let g:jsdoc_lehre_path = 'C://Users//IsitaDev013//node_modules//.bin//lehere'
" let g:jsdoc_lehre_path = '/c/Users/IsitaDev013/node_modules/.bin/lehere'
" /c/Users/IsitaDev013/node_modules/.bin
highlight Comment cterm=italic
set t_ZH=[3m
set t_ZR=[23m


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
