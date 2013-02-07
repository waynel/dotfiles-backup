" Normal mode
" ===========

let mapleader = ','

nmap ; :
nmap <silent> \ :NERDTreeToggle<cr>
nmap <leader>f :CommandTFlush<cr>:CommandT<cr>
nmap <leader>v :vsp<cr>
nmap <leader>rv :source $MYVIMRC<cr>
nmap <leader>rs :call ReloadAllSnippets()<cr>
nmap <leader>u :GundoToggle<cr>
nmap <leader>a :Ack<space>
nmap <silent> <leader>w :Gbrowse<cr>
nmap <silent> <leader>A yiw:Ack<space><c-r>"<cr>
nmap <leader>n :tabnew<cr>

nmap <leader>1 :set foldlevel=1<cr>
nmap <leader>2 :set foldlevel=2<cr>
nmap <leader>3 :set foldlevel=3<cr>
nmap <leader>4 :set foldlevel=4<cr>

nmap <c-n> :NumbersToggle<cr>
nmap <leader><leader> :ZoomWin<cr>
nmap - dd
map <silent> <leader>g :Gblame<cr>
map <silent> <leader>/ :call NERDComment(1, 'toggle')<cr>
map Y y$

" Find current file in NERDTree
map \| :NERDTreeFind<cr>

" Buffer navigation
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

nmap <leader>s :%s/
vmap <leader>s :s/
vmap <silent> <leader>a y:Ack<space><c-r>"<cr>

omap in( :<c-u>normal! f(vi(<cr>
omap in" :<c-u>normal! f"vi"<cr>
omap il( :<c-u>normal! F)vi(<cr>
omap il" :<c-u>normal! F"vi"<cr>

" Insert mode
" ===========

" Quick move to normal mode
imap kj <esc>

" Copy current file path
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>
