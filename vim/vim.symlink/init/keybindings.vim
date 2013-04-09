let mapleader = ','

"General
map ; :
noremap ;; ;
nmap <silent> \ :NERDTreeToggle<cr>
"Hard Mode
"nnoremap <leader>hm <Esc>:call ToggleHardMode()<CR>
"Move Lines Up or down like textmate

"Command T
nmap <leader>F :vnew<cr>:CommandTFlush<cr>:CommandT<cr>
nmap <leader>f :CommandTFlush<cr>:CommandT<cr>
"Color Scheme Shortcuts
nmap <leader>csl :colorscheme Tomorrow<cr>
nmap <leader>csd :colorscheme Tomorrow-Night-Eighties<cr>
nmap <leader>csb :colorscheme Tomorrow-Night-Blue<cr>
nmap <leader>css :set background=light<cr>:colorscheme solarized<cr>
"Split stuff
nmap <leader>v :vnew<cr>
map <leader>h :new<cr>
map <leader>H :botright new<cr>
map <leader>V :botright vnew<cr>
"Title Bar
nmap <leader>t :set title titlestring=
"Highlight current line
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>


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

nmap <leader><leader> :ZoomWin<cr>
nmap - dd

"Git Stuff
map <silent> <leader>gb :Gblame<cr>
map <silent> <leader>gc :Gcommit<cr>
map <silent> <leader>gs :Gstatus<cr>
map <silent> <leader>gd :Gdiff<cr>

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
imap kj <esc>l

" Copy current file path
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

"resize windows
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
"Swap Lines Like TextMate
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <c-k> :call <SID>swap_up()<CR>
noremap <silent> <c-j> :call <SID>swap_down()<CR>
