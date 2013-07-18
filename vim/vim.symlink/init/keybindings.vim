"General
  let mapleader = ','
  map ; :
  noremap ;; ;
  map Y "+y
  "Search Selected Text
    vmap * y/<c-r>"<cr>
  "colors
    nmap <leader>sfj :setf javascript<cr>
    nmap <leader>sfr :setf ruby<cr>
    nmap <leader>sfh :setf ham<cr>
" save
  map <leader>ss :mksession! ~/.vim/sessions/last.vim<cr>
  map <leader>SS :mksession! ~/.vim/sessions/
  map <leader>oo :source ~/.vim/sessions/last.vim<cr>
  map <leader>OO :source ~/.vim/sessions/
" run scrap ruby
  nmap <leader>rb :w! ~/scrap.rb<cr>:r !ruby %<cr>
"Reload
  nmap <leader>rv :source $MYVIMRC<cr>
  nmap <leader>rs :call ReloadAllSnippets()<cr>
" Buffer navigation
  nmap <c-h> <c-w>h
  nmap <c-j> <c-w>j
  nmap <c-k> <c-w>k
  nmap <c-l> <c-w>l
"Split stuff
  nmap <leader>v :vnew<cr>
  map <leader>h :new<cr>
  map <leader>H :botright new<cr>
  map <leader>V :botright vnew<cr>
"resize windows
  nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
  nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
"Title Bar
  nmap <leader>t :set title titlestring=
"Pretty JSON
  nmap <silent><leader>j :%!python -m json.tool<CR>
"?????
  omap in( :<c-u>normal! f(vi(<cr>
  omap in" :<c-u>normal! f"vi"<cr>
  omap il( :<c-u>normal! F)vi(<cr>
  omap il" :<c-u>normal! F"vi"<cr>
  " Copy current file path
  map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
  map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>
"Color Scheme Shortcuts
  nmap <leader>csl :colorscheme Tomorrow<cr>
  nmap <leader>csd :colorscheme Tomorrow-Night-Eighties<cr>
  nmap <leader>csi :colorscheme Tomorrow-Night-Bright<cr>
  nmap <leader>csb :colorscheme Tomorrow-Night-Blue<cr>
  nmap <leader>css :set background=dark<cr>:colorscheme solarized<cr>
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
"Plugins
  "Ctrl-P
    nmap <leader>f :CtrlP<cr>
  "Tabular
    map  <leader>=  :Tabularize /
  "Gundo
    nmap <leader>u :GundoToggle<cr>
  "Ag
    nmap <leader>a :Ag! -QS<space>
    nmap <leader>A :AgFromSearch -QS<cr>
    vmap <silent> <leader>a y:Ag!<space><c-r>"<cr>
    vmap <silent> <leader>A y:AgFile<space><c-r>"<cr>
  "Zoomwin
    nmap <leader><leader> :ZoomWin<cr>
  "Git Stuff
    map <silent> <leader>gb :Gblame<cr>
    map <silent> <leader>gc :Gcommit<cr>
    map <silent> <leader>gs :Gstatus<cr>
    map <silent> <leader>gd :Gdiff<cr>
    map <silent> <leader>gh :Gbrowse<cr>
    map <silent> <leader>ge :Gedit<cr>
    map <silent> <leader>gl :Glog<cr>
  "Vimux Stuff
    "this is just annoying
      map <silent><leader>r :<cr>
    "prompt for a command to run
      map <leader>RR  :VimuxPromptCommand<cr>
      map <leader>rr  Vy:call VimuxRunCommand('<c-r>"')<CR>
      vmap <leader>rr  y:call VimuxRunCommand('<c-r>"')<CR>
      map <leader>rl  :VimuxRunLastCommand<cr>
      map <leader>rx  :VimuxCloseRunner<cr>
      map <leader>rc  :let VimuxUseNearestPane = 1<cr>
"      map <leader>rs  :w<cr>:VimuxInterruptRunner<cr>
"      map <leader>rtf :w<cr>:RunRubyFocusedTest<cr>
"      map <leader>rtc :w<cr>:RunRubyFocusedContext<cr>
"      map <leader>rta :w<cr>:RunAllRubyTests<cr>
 "Coffee Stuff
      map <silent><leader>cc  :CoffeeCompile vert<cr>
      map <silent><leader>cr  :CoffeeRun<cr>
      map <silent><leader>cp  :! coffee --compile %:p<cr>
