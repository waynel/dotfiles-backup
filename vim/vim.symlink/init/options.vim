" Trailing whitespace
set list
set listchars=trail:·

set guifont=Inconsolata:h20
"set guioptions-=T  " Hide gui chrome
"set guioptions-=e  " Use text tabs
set wildmode=list:longest
"set guioptions-=rL " No scrollbar
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
"set autowriteall
"too annoying to use with vagrant
"save on blur
"autocmd BufLeave,FocusLost * silent! wall

"Spell Checking
nmap <silent> <leader>s :set spell!<CR>

" Tabs are 2 literal spaces
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a "use mouse in terminal mode
" Set search highlighting,
" Press space to turn off highlighting
set hls
nnoremap <silent> <space> :nohlsearch<Bar>:echo<cr>""
" Hard Mode
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

set noswapfile
set nobackup

"Winheight
"set winheight=8
"set winminheight=8
"set winheight=999

set backspace=2

