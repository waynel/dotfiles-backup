set nocompatible
set wildcharm=<C-Z>
set path+=**
filetype plugin on
runtime macros/matchit.vim
"UX Stuff
  set guifont=Inconsolata:h20
  set guioptions-=T  " Hide gui chrome set guioptions-=e  " Use text tabs
  set guioptions-=rL " No scrollbar
  set visualbell      " Suppress bell
  set cursorline
  "change insert mode shape in tmux
    if exists('$TMUX')
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
      let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
      let &t_SI = "\<Esc>]50;CursorShape=2\x7"
      let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
" Search
  set ignorecase
  set smartcase
  set incsearch
  " Set search highlighting,
  " Press space to turn off highlighting
    set hls
" Behavior
  "auto center cursor
    set so=999
    set splitright
    set splitbelow
    set mouse=a "use mouse in terminal mode
  " Toggle Numbers
    set relativenumber
    set number
    aug linenumbers
      au!
      au InsertEnter * :set number
      au InsertEnter * :set norelativenumber
      au InsertLeave * :set relativenumber
    augroup end
  "Spell Checking
    nmap <silent> <leader>s :set spell!<CR>
"Other
  set wildmode=list:full
  let g:ruby_path = system('rvm current')
set autoread
set ttyfast
set scrolljump=5
set timeout
set ttimeout
set shell=/bin/bash
set noswapfile
set nobackup
set history=200

"for vimux
let g:VimuxOrientation = "h"
