" Trailing whitespace
set list
set listchars=trail:·

set guifont=Inconsolata:h18
set guioptions-=T  " Hide gui chrome
set guioptions-=e  " Use text tabs
set wildmode=list:longest
set guioptions-=rL " No scrollbar
set visualbell     " Suppress bell
set cursorline
set nowrap
set number
set ignorecase
set foldmethod=syntax
set nofoldenable
set smartcase
set incsearch
set splitright
set splitbelow
set autoread
set shell=/bin/sh

set autowriteall
autocmd BufLeave,FocusLost * silent! wall

" Tabs are 2 literal spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Set search highlighting,
" Press space to turn off highlighting
set hls
nnoremap <silent> <space> :nohlsearch<Bar>:echo<cr>""

set noswapfile
set nobackup
