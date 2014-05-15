" Keybindings
" -----------

noremap Y "*y
nmap <leader>t :tabe<cr> 
" kj - The intuitive way to get out of insert mode
imap kj         <Esc>

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
" map <leader>v   :vnew<CR>
map <leader>v   :vsp<CR>
" map <leader>V   :botright vnew<CR>
map <leader>V   :topleft vsp<CR>
map <leader>h   :new<CR>
map <leader>H   :botright new<CR>

" Move between screens
map <leader>w   ^Ww
map <leader>=   ^W=
map <leader>j   ^Wj
map <leader>k   ^Wk
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" Open .vimrc file in new tab. Think Command + , [Preferences...] but with Shift.
map <D-<>       :tabedit ~/.vimrc<CR>

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Undo/redo - Doesn't MacVim already have this?
map <D-z>       :earlier 1<CR>
map <D-Z>       :later 1<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G``:echo "Reformatted."<CR>

" Jump to a new line in insert mode
imap <D-CR>     <Esc>o

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>

" Previous/next buffers
map <M-D-Left>  :bp<CR>
map <M-D-Right> :bn<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" FuzzyFinder and switchback commands
map <leader>e   :e#<CR>
map <leader>b   :FufBuffer<CR>
map <leader><C-N> :FufFile **/<CR>
map <D-e> :FufBuffer<CR>
map <leader>n :FufFile **/<CR>
map <D-N> :FufFile **/<CR>

" refresh the FuzzyFinder cache
map <leader>rf :FufRenewCache<CR>

" Command-T
map <leader>f   :CtrlP<CR><F5>

" ctags with rails load path
map <leader>rt  :!rails runner 'puts $LOAD_PATH.join(" ")' \| xargs /usr/local/bin/ctags -R public/javascripts<CR>
map <leader>T   :!rails runner 'puts $LOAD_PATH.join(" ")' \| xargs rdoc -f tags<CR>
nnoremap <leader>] : !bundle show --paths \| xargs ctags -Rf.git/tags; ctags -R -a *<cr>
" Git blame map <leader>g   :Gblame<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle
map <D-/>       <plug>NERDCommenterToggle
imap <D-/>      <Esc><plug>NERDCommenterToggle i

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Easy access to the shell
map <Leader><Leader> :!

nnoremap <leader>rr :set operatorfunc=<SID>GitGrep<cr>g@
vnoremap <leader>rr :<c-u>call <SID>GitGrep(visualmode())<cr>

function! s:GitGrep(type)
  let saved_unamed_register = @@

  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif

  silent execute "Ggrep " . shellescape(@@) . " ."
  copen
  redraw!

  let @@ = saved_unamed_register
endfunction
" AckGrep current word
map <leader>A :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>A :call AckVisual()<CR>
" AckGrep shorthand
map <leader>a :Ack<space>

" Recalculate diff when it gets messed up.
nmap du :diffupdate<CR>

"Search Selected Text
vmap * y/<c-r>"<cr>

"Coffee Stuff
    nnoremap <silent><leader>cc  :CoffeeCompile vert<cr>

"Vimux Stuff
  "this is just annoying
    no <silent><leader>r :<cr>
  "prompt for a command to run
    nnoremap <leader>RR  :VimuxPromptCommand<cr>
    nnoremap <leader>rr  Vy:call VimuxRunCommand('<c-r>"')<CR>
    vnoremap <leader>rr  y:call VimuxRunCommand('<c-r>"')<CR>
    nnoremap <leader>rl  :VimuxRunLastCommand<cr>
    nnoremap <leader>rx  :VimuxCloseRunner<cr>
    nnoremap <leader>rc  :let VimuxUseNearestPane = 1<cr>
    nnoremap <leader>rr  V"vy:call VimuxRunCommand(escape(@v, '`'))<CR>
    vnoremap <leader>rr  "vy:call VimuxRunCommand(escape(@v, '`'))<CR>

"tabular
    vnoremap <leader>=  :Tabularize /
