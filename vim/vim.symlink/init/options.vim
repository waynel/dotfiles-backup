"UX Stuff
  set guifont=Inconsolata:h20
  "set guioptions-=T  " Hide gui chrome
  "set guioptions-=e  " Use text tabs
  "set guioptions-=rL " No scrollbar
  set visualbell      " Suppress bell
  set nocursorline    " slow in terminal
  set number          " number lines
  "change insert mode color in tmux
    if exists('$TMUX')
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
      let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
      let &t_SI = "\<Esc>]50;CursorShape=2\x7"
      let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
" Text Formatting
  " Trailing whitespace
    set list
    set listchars=trail:·
  set nowrap
  set foldmethod=syntax
  set nofoldenable
  set backspace=2
  " Tabs are 2 literal spaces
    set tabstop=2
    set shiftwidth=2
    set expandtab
" Search
  set ignorecase
  set smartcase
  set incsearch
  " Set search highlighting,
  " Press space to turn off highlighting
    set hls
    nnoremap <silent> <space> :nohlsearch<Bar>:echo<cr>""
" Behavior
  "auto center cursor
  set so=999
  set splitright
  set splitbelow
  set mouse=a "use mouse in terminal mode
  "Spell Checking
    nmap <silent> <leader>s :set spell!<CR>
  "Winheight
    "set winheight=8
    "set winminheight=8
    "set winheight=999
"Other
  set wildmode=list:longest "How Command Line Completion is Done
  let g:ruby_path = system('rvm current')
set autoread
set ttyfast
set shell=/bin/bash
set noswapfile
set nobackup
