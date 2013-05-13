let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
nmap  h
snoremap <silent> 	 i<Right>=TriggerSnippet()
nmap  l
nnoremap <silent>  :CtrlP
nmap o <Plug>ZoomWin
snoremap  b<BS>
nnoremap <silent>   :nohlsearch|:echo""
snoremap % b<BS>%
snoremap ' b<BS>'
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)
map ,rs :w:VimuxInterruptRunner
map ,OO :source ~/.vim/sessions/
map ,oo :source ~/.vim/sessions/last.vim
map ,SS :mksession! ~/.vim/sessions/
map ,ss :mksession! ~/.vim/sessions/last.vim
nmap <silent> ,s :set spell!
map ,rta :w:RunAllRubyTests
map ,rtc :w:RunRubyFocusedContext
map ,rtf :w:RunRubyFocusedTest
map ,rx :VimuxCloseRunner
map ,ri :VimuxInspectRunner
map ,rl :Vimuxw:RunLastCommand
map ,rp :VimuxPromptCommand
map <silent> ,r :
map <silent> ,gh :Gbrowse
map <silent> ,gd :Gdiff
map <silent> ,gs :Gstatus
map <silent> ,gc :Gcommit
map <silent> ,gb :Gblame
nmap ,, :ZoomWin
vmap <silent> ,a y:Ag! "
nmap ,a :Ag! 
nmap ,u :GundoToggle
map ,= :Tabularize /
nmap ,f :CtrlP
nmap ,css :set background=light:colorscheme solarized
nmap ,csb :colorscheme Tomorrow-Night-Blue
nmap ,csi :colorscheme Tomorrow-Night-Bright
nmap ,csd :colorscheme Tomorrow-Night-Eighties
nmap ,csl :colorscheme Tomorrow
map ,C :let @* = expand("%").":".line("."):echo "Copied: ".expand("%").":".line(".")
nmap <silent> ,j :%!python -m json.tool
nmap ,t :set title titlestring=
map ,V :botright vnew
map ,H :botright new
map ,h :new
nmap ,v :vnew
nmap ,rv :source $MYVIMRC
nmap ,rb :w! ~/scrap.rb:r !ruby %
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)
noremap ;; ;
map ; :
xmap S <Plug>VSurround
snoremap U b<BS>U
map Y "+y
snoremap \ b<BS>\
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap g! <Plug>ScripteaseFilter
nmap g!! <Plug>ScripteaseFilter_
nmap g! <Plug>ScripteaseFilter
omap il" :normal! F"vi"
omap il( :normal! F)vi(
omap in" :normal! f"vi"
omap in( :normal! f(vi(
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nmap zS <Plug>ScripteaseSynnames
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SurroundRepeat .
map <silent> <D-C> :let @* = expand("%"):echo "Copied: ".expand("%")
xmap <BS> "-d
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap <silent> [6~ <PageDown>
imap <silent> [5~ <PageUp>
imap <silent> OF <End>
imap <silent> OH <Home>
imap <silent> OD <Left>
imap <silent> OC <Right>
imap <silent> OB <Down>
imap <silent> OA <Up>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set backspace=2
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Inconsolata:h20
set helplang=en
set hlsearch
set ignorecase
set incsearch
set langmenu=none
set listchars=trail:·
set mouse=a
set runtimepath=~/.vim,~/.vim/bundle/ag.vim,~/.vim/bundle/appalled,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/gundo,~/.vim/bundle/snipmate,~/.vim/bundle/tabular,~/.vim/bundle/vim-autoclose,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-haml,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-scriptease,~/.vim/bundle/vim-solarized,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-tomorrow-theme,~/.vim/bundle/vimux,~/.vim/bundle/vimux-ruby-test,~/.vim/bundle/webapi-vim,~/.vim/bundle/zoomwin,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/snipmate/after,~/.vim/bundle/tabular/after,~/.vim/after
set shell=/bin/sh
set shiftwidth=2
set smartcase
set splitbelow
set splitright
set noswapfile
set tabline=%!MyTabLine()
set tabstop=2
set visualbell
set wildmode=list:longest
set window=65
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/pos.rb
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/workspace/exchange/app/views/api/v9/ticket_groups/index.rjson
badd +31 ~/workspace/exchange/app/models/ticket_group.rb
badd +14 ~/workspace/exchange/app/models/api_ticket_group_view.rb
badd +0 ~/workspace/exchange/app/controllers/api/v9/ticket_groups_controller.rb
silent! argdel *
edit ~/workspace/exchange/app/views/api/v9/ticket_groups/index.rjson
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 101 + 101) / 203)
exe 'vert 2resize ' . ((&columns * 101 + 101) / 203)
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/workspace/exchange,~/workspace/exchange/app,~/workspace/exchange/app/models,~/workspace/exchange/app/controllers,~/workspace/exchange/app/helpers,~/workspace/exchange/config,~/workspace/exchange/lib,~/workspace/exchange/app/views,~/workspace/exchange/app/views/api/v9/ticket_groups,~/workspace/exchange/public,~/workspace/exchange/spec,~/workspace/exchange/spec/models,~/workspace/exchange/spec/controllers,~/workspace/exchange/spec/helpers,~/workspace/exchange/spec/views,~/workspace/exchange/spec/lib,~/workspace/exchange/spec/requests,~/workspace/exchange/spec/integration,~/workspace/exchange/app/*,~/workspace/exchange/vendor,~/workspace/exchange/vendor/plugins/*/lib,~/workspace/exchange/vendor/plugins/*/test,~/workspace/exchange/vendor/rails/*/lib,~/workspace/exchange/vendor/rails/*/test,ruby-2.0.0-p0\

setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/workspace/exchange/tmp/tags,./tags,tags,~/workspace/exchange/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 66 - ((48 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 050l
lcd ~/workspace/exchange
wincmd w
argglobal
edit ~/workspace/exchange/app/controllers/api/v9/ticket_groups_controller.rb
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=ql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/workspace/exchange,~/workspace/exchange/app,~/workspace/exchange/app/models,~/workspace/exchange/app/controllers,~/workspace/exchange/app/helpers,~/workspace/exchange/config,~/workspace/exchange/lib,~/workspace/exchange/app/views,~/workspace/exchange/app/views/api/v9/ticket_groups,~/workspace/exchange/public,~/workspace/exchange/spec,~/workspace/exchange/spec/models,~/workspace/exchange/spec/controllers,~/workspace/exchange/spec/helpers,~/workspace/exchange/spec/views,~/workspace/exchange/spec/lib,~/workspace/exchange/spec/requests,~/workspace/exchange/spec/integration,~/workspace/exchange/app/*,~/workspace/exchange/vendor,~/workspace/exchange/vendor/plugins/*/lib,~/workspace/exchange/vendor/plugins/*/test,~/workspace/exchange/vendor/rails/*/lib,~/workspace/exchange/vendor/rails/*/test,ruby-2.0.0-p0\

setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/workspace/exchange/tmp/tags,./tags,tags,~/workspace/exchange/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 342 - ((39 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
342
normal! 0
lcd ~/workspace/exchange
wincmd w
exe 'vert 1resize ' . ((&columns * 101 + 101) / 203)
exe 'vert 2resize ' . ((&columns * 101 + 101) / 203)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
