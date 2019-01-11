call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'airblade/vim-gitgutter'
Plug 'sbdchd/neoformat'
Plug 'kshenoy/vim-signature'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'raimondi/delimitmate' " автозакрытие скобок
Plug 'yggdroot/indentline'

" colorscheme
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'owickstrom/vim-colors-paramount'
Plug 'JarrodCTaylor/spartan'
Plug 'chriskempson/base16-vim'
Plug 'tyrannicaltoucan/vim-quantum'

" Python
Plug 'klen/python-mode', { 'branch': 'develop', 'for': 'python' }
Plug 'davidhalter/jedi-vim'
"Plug 'nvie/vim-flake8'


call plug#end()

filetype plugin indent on

" colorscheme
if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"colorscheme PaperColor
"colorscheme gruvbox
"colorscheme base16-default-dark
colorscheme quantum
let g:quantum_black=1
let g:quantum_italics=1

"colorscheme paramount  "minimal
"colorscheme spartan

"colorscheme molokai
"colorscheme one
"set t_Co=256
set background=dark

" tagbar
nmap <F8> :TagbarToggle<CR>

" indentline
let g:indentLine_enabled = 1
" let g:indentLine_char = '┊'
let g:indentLine_char = '¦'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 0
map zh :IndentLinesToggle<cr>:LeadingSpaceToggle<cr>

" highlight select words
nnoremap gw :call InterestingWords('n')<cr>
nnoremap gww :call UncolorAllWords()<cr>
let g:interestingWordsRandomiseColors = 1

" save
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>l
vnoremap <c-s> <Esc>:w<CR>

" Remaps
map <C-n> :NERDTreeToggle<CR>
inoremap jk <ESC>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" fast escape
inoremap jj <ESC>
imap jw <ESC>

map gn :tabnew<CR>

" Common tweaks
let mapleader=','
set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse=a
set number
set cursorline
set nowrap
set colorcolumn=80
set noswapfile
set splitbelow
set splitright
set hlsearch
set clipboard+=unnamedplus
set completeopt-=preview " hide doc

set shiftround
set autoindent

" tweaks scroll
set ttyfast
set lazyredraw
set synmaxcol=128
syntax sync minlines=256
set regexpengine=1 
"set cul!
"set relativenumber
set cursorline

" Vim-Airline
set laststatus=2
"let g:airline_theme='one'
let g:airline_theme='quantum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" search settings
set ignorecase
set smartcase
set wildignore=*/venv/*,*/.git/*,*/site/*

" filetype settings
autocmd Filetype html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype markdown setlocal textwidth=80
autocmd Filetype yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" python-mode settings
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3.5'
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:jedi#completions_enabled = 1
let g:pymode_rope_guess_project=0
" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'k'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pylint"
"let g:pymode_lint_ignore="e501,w601,c0110"
" провека кода после сохранения
let g:pymode_lint_write = 1
" поддержка virtualenv
let g:pymode_virtualenv = 1
" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"hi pythonSelf  ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold
" отключить autofold по коду
let g:pymode_folding = 0
" возможность запускать код
let g:pymode_run = 0
let g:pymode_python = 'python3'
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "1"
let g:SuperTabLongestHighlight = 1
let g:jedi#popup_select_first = 0
let g:deoplete#enable_at_startup = 0

