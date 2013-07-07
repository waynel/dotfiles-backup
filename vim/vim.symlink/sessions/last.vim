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
vmap * y/"
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)
nmap <silent> ,s :set spell!
nnoremap ,y :Unite history/yank
nmap ,f :Unite -start-insert file_rec
map <silent> ,cp :! coffee --compile %:p
map <silent> ,cr :CoffeeRun
map <silent> ,cc :CoffeeCompile vert
map ,rta :w:RunAllRubyTests
map ,rtc :w:RunRubyFocusedContext
map ,rtf :w:RunRubyFocusedTest
map ,rx :VimuxCloseRunner
map ,ri :VimuxInspectRunner
map ,rl :VimuxRunLastCommand
map ,rp :VimuxPromptCommand
map <silent> ,r :
map <silent> ,gl :Glog
map <silent> ,ge :Gedit
map <silent> ,gh :Gbrowse
map <silent> ,gd :Gdiff
map <silent> ,gs :Gstatus
map <silent> ,gc :Gcommit
map <silent> ,gb :Gblame
nmap ,, :ZoomWin
vmap <silent> ,A y:AgFile "
vmap <silent> ,a y:Ag! "
nmap ,A :AgFromSearch -QS
nmap ,a :Ag! -QS 
nmap ,u :GundoToggle
map ,= :Tabularize /
nmap ,css :set background=dark:colorscheme solarized
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
nmap ,rs :call ReloadAllSnippets()
nmap ,rv :source $MYVIMRC
nmap ,rb :w! ~/scrap.rb:r !ruby %
map ,OO :source ~/.vim/sessions/
map ,oo :source ~/.vim/sessions/last.vim
map ,SS :mksession! ~/.vim/sessions/
map ,ss :mksession! ~/.vim/sessions/last.vim
nmap ,sfh :setf ham
nmap ,sfr :setf ruby
nmap ,sfj :setf javascript
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)
noremap ;; ;
map ; :
xmap S <Plug>VSurround
snoremap U b<BS>U
map Y "+y
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nnoremap [ox :set cursorline cursorcolumn
nnoremap [ow :set wrap
nnoremap [os :set spell
nnoremap [or :set relativenumber
nnoremap [on :set =(exists('+rnu') && &rnu ? 'norelativenumber ' : '')number
nnoremap [ol :set list
nnoremap [oi :set ignorecase
nnoremap [oh :set hlsearch
nnoremap [od :diffthis
nnoremap [ou :set cursorcolumn
nnoremap [oc :set cursorline
xmap [e <Plug>unimpairedMoveUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [ <Plug>unimpairedQPFile
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [ <Plug>unimpairedLPFile
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
snoremap \ b<BS>\
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nnoremap ]ox :set nocursorline nocursorcolumn
nnoremap ]ow :set nowrap
nnoremap ]os :set nospell
nnoremap ]or :set norelativenumber
nnoremap ]on :set =(exists('+rnu') && &rnu ? 'norelativenumber ' : '')nonumber
nnoremap ]ol :set nolist
nnoremap ]oi :set noignorecase
nnoremap ]oh :set nohlsearch
nnoremap ]od :diffoff
nnoremap ]ou :set nocursorcolumn
nnoremap ]oc :set nocursorline
xmap ]e <Plug>unimpairedMoveDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap ]f <Plug>unimpairedDirectoryNext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ] <Plug>unimpairedQNFile
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ] <Plug>unimpairedLNFile
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
snoremap ^ b<BS>^
snoremap ` b<BS>`
nnoremap cox :set =&cursorline && &cursorcolumn ? 'nocursorline nocursorcolumn' : 'cursorline cursorcolumn'
nnoremap cod :=&diff ? 'diffoff' : 'diffthis'
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
xnoremap <silent> <Plug>unimpairedMoveDown :exe 'exe "normal! m`"|''<,''>move''>+'.v:count1``
xnoremap <silent> <Plug>unimpairedMoveUp :exe 'exe "normal! m`"|''<,''>move--'.v:count1``
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "tlast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTFirst :exe "tfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTNext :exe "tnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTPrevious :exe "tprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQNFile :exe "cnfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQPFile :exe "cpfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQLast :exe "clast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQFirst :exe "cfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQNext :exe "cnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQPrevious :exe "cprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLNFile :exe "lnfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLPFile :exe "lpfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLLast :exe "llast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLFirst :exe "lfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLNext :exe "lnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLPrevious :exe "lprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBLast :exe "blast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBFirst :exe "bfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBNext :exe "bnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBPrevious :exe "bprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedALast :exe "last ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedAFirst :exe "first ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedANext :exe "next ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedAPrevious :exe "previous ".(v:count ? v:count : "")
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
set isident=@,48-57,_,192-255,$
set iskeyword=@,48-57,_,192-255,$
set langmenu=none
set laststatus=2
set listchars=trail:·
set mouse=a
set runtimepath=~/.vim,~/.vim/bundle/ag.vim,~/.vim/bundle/appalled,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/gundo,~/.vim/bundle/snipmate,~/.vim/bundle/tabular,~/.vim/bundle/unite.vim,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-autoclose,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-haml,~/.vim/bundle/vim-in-rainbows,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-scriptease,~/.vim/bundle/vim-solarized,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-tomorrow-theme,~/.vim/bundle/vim-unimpaired,~/.vim/bundle/vimux,~/.vim/bundle/vimux-ruby-test,~/.vim/bundle/vundle,~/.vim/bundle/webapi-vim,~/.vim/bundle/zoomwin,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/snipmate/after,~/.vim/bundle/tabular/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/after
set scrollopt=ver,jump,hor
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
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/pos.rb
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/workspace/exchange
badd +1 app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form.js
badd +150 app/assets/javascripts/backbone/views/deliveries/create_fedex.js
badd +24 app/assets/javascripts/backbone/views/ticket_groups/rate_options_select.js
badd +58 app/assets/javascripts/backbone/views/deliveries/order_form.js
badd +45 ~/workspace/exchange/app/models/payments_builder.rb
badd +1 app/assets/javascripts/backbone/views/buysell/buy_sell_form.js
badd +1 app/assets/javascripts/backbone/views/buy/buy_sell_form.js
badd +1 app/assets/javascripts/backbone/views/sell/start_purchase_form.js
badd +16 app/assets/javascripts/backbone/views/ticket_groups/start_purchase_form.js
badd +113 app/assets/templates/ticket_groups/buy_sell_form.jst.hamljs
badd +95 app/assets/javascripts/application.js
badd +1 app/assets/javascripts/backbone/views/ticket_groups/buy_sell_form.js
badd +1 app/assets/javascripts/backbone/views/ticket_groups/buy_sell_form.js.coffee
badd +52 app/assets/javascripts/application_init.js
badd +693 app/assets/javascripts/backbone/models/order.js
badd +5 app/assets/javascripts/backbone/views/credit_cards/credit_memo_cards.js
badd +0 app/assets/templates/ticket_groups/complete_purchase.jst.hamljs
badd +102 app/assets/javascripts/backbone/models/client.js
badd +47 app/assets/templates/orders/complete_modal.jst.hamljs
badd +67 app/assets/javascripts/backbone/views/orders/complete_modal.js
badd +1 app/assets/javascripts/backbone/collections/evopay_transactions.js
badd +0 app/assets/javascripts/backbone/views/orders/inline_transactions.js
badd +0 ~/workspace/exchange/app/models/order_group/builder.rb
args ~/workspace/pos.rb ~/workspace/exchange
edit app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 59 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 59 + 89) / 179)
exe 'vert 3resize ' . ((&columns * 59 + 89) / 179)
argglobal
edit app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form.js
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
set nofoldenable
setlocal foldenable
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
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
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/app/views/backbone/views/ticket_groups/complete_purchase_form,~/workspace/pos.rb/public,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,/usr/include
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
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form.js%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 277 - ((33 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
277
normal! 0
lcd ~/workspace/pos.rb
wincmd w
argglobal
edit ~/workspace/pos.rb/app/assets/javascripts/backbone/models/order.js
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
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
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/app/views/backbone/models/order,~/workspace/pos.rb/public,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,/usr/include,
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
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ app/assets/javascripts/backbone/models/order.js%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 668 - ((27 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
668
normal! 04l
lcd ~/workspace/pos.rb
wincmd w
argglobal
edit ~/workspace/pos.rb/app/assets/templates/ticket_groups/complete_purchase.jst.hamljs
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
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
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
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
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
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
setlocal path=~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,ruby-2.0.0-p0\

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
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ app/assets/templates/ticket_groups/complete_purchase.jst.hamljs%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 65 - ((11 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
65
normal! 046l
lcd ~/workspace/pos.rb
wincmd w
exe 'vert 1resize ' . ((&columns * 59 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 59 + 89) / 179)
exe 'vert 3resize ' . ((&columns * 59 + 89) / 179)
tabedit ~/workspace/pos.rb/app/assets/javascripts/backbone/views/ticket_groups/buy_sell_form.js.coffee
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
edit ~/workspace/pos.rb/app/assets/javascripts/backbone/views/ticket_groups/buy_sell_form.js.coffee
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
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
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=Error:\ In\ %f\\,\ %m\ on\ line\ %l,Error:\ In\ %f\\,\ Parse\ error\ on\ line\ %l:\ %m,SyntaxError:\ In\ %f\\,\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'coffee'
setlocal filetype=coffee
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetCoffeeIndent(v:lnum)
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0],0),0.,=else,=when,=catch,=finally
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=coffee\ -c\ \ $*\ 
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/app/views/backbone/views/ticket_groups/buy_sell_form,~/workspace/pos.rb/public,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,/usr/include
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
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ javascripts/backbone/views/ticket_groups/buy_sell_form.js.coffee%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'coffee'
setlocal syntax=coffee
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 197 - ((52 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
197
normal! 09l
lcd ~/workspace/pos.rb/app/assets
wincmd w
argglobal
edit ~/workspace/pos.rb/app/assets/templates/ticket_groups/buy_sell_form.jst.hamljs
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
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
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
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
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
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
setlocal path=~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,ruby-2.0.0-p0\

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
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ templates/ticket_groups/buy_sell_form.jst.hamljs%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 96 - ((10 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
96
normal! 041l
lcd ~/workspace/pos.rb/app/assets
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabedit ~/workspace/exchange/app/models/order_group/builder.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
edit ~/workspace/exchange/app/models/order_group/builder.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
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
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
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
setlocal iskeyword=@,48-57,_,192-255,$
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
setlocal path=~/workspace/exchange,~/workspace/exchange/app,~/workspace/exchange/app/models,~/workspace/exchange/app/controllers,~/workspace/exchange/app/helpers,~/workspace/exchange/config,~/workspace/exchange/lib,~/workspace/exchange/app/views,~/workspace/exchange/spec,~/workspace/exchange/spec/models,~/workspace/exchange/spec/controllers,~/workspace/exchange/spec/helpers,~/workspace/exchange/spec/views,~/workspace/exchange/spec/lib,~/workspace/exchange/spec/requests,~/workspace/exchange/spec/integration,~/workspace/exchange/app/*,~/workspace/exchange/vendor,~/workspace/exchange/vendor/plugins/*/lib,~/workspace/exchange/vendor/plugins/*/test,~/workspace/exchange/vendor/rails/*/lib,~/workspace/exchange/vendor/rails/*/test,ruby-2.0.0-p0\

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
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ app/models/order_group/builder.rb%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
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
let s:l = 103 - ((31 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
103
normal! 044l
lcd ~/workspace/exchange
wincmd w
argglobal
edit ~/workspace/exchange/app/models/payments_builder.rb
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
setlocal iskeyword=@,48-57,_,192-255,$
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
setlocal path=~/workspace/exchange,~/workspace/exchange/app,~/workspace/exchange/app/models,~/workspace/exchange/app/controllers,~/workspace/exchange/app/helpers,~/workspace/exchange/config,~/workspace/exchange/lib,~/workspace/exchange/app/views,~/workspace/exchange/spec,~/workspace/exchange/spec/models,~/workspace/exchange/spec/controllers,~/workspace/exchange/spec/helpers,~/workspace/exchange/spec/views,~/workspace/exchange/spec/lib,~/workspace/exchange/spec/requests,~/workspace/exchange/spec/integration,~/workspace/exchange/app/*,~/workspace/exchange/vendor,~/workspace/exchange/vendor/plugins/*/lib,~/workspace/exchange/vendor/plugins/*/test,~/workspace/exchange/vendor/rails/*/lib,~/workspace/exchange/vendor/rails/*/test,ruby-2.0.0-p0\

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
setlocal statusline=%2*%{AirlineModePrefix()}%3*%{g:airline_left_sep}%4*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %5*%{g:airline_left_sep}%*\ %f%m\ %#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%*%<%=%6*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%*\ %{strlen(&filetype)>0?&filetype:''}\ %5*%{g:airline_right_sep}%4*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %3*%{g:airline_right_sep}%2*\ %3p%%\ :%3l:%3c\ 
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
let s:l = 4 - ((3 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 06l
lcd ~/workspace/exchange
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabedit ~/workspace/pos.rb/app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form.js
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 44 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 59 + 89) / 179)
exe '2resize ' . ((&lines * 44 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 59 + 89) / 179)
exe '3resize ' . ((&lines * 44 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 59 + 89) / 179)
exe '4resize ' . ((&lines * 10 + 29) / 58)
argglobal
edit ~/workspace/pos.rb/app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form.js
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
set nofoldenable
setlocal foldenable
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
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
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/app/views/backbone/views/ticket_groups/complete_purchase_form,~/workspace/pos.rb/public,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,/usr/include
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
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form.js%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 99 - ((7 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
99
normal! 06l
lcd ~/workspace/pos.rb
wincmd w
argglobal
edit ~/workspace/pos.rb/app/assets/templates/orders/complete_modal.jst.hamljs
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
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
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
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
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
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
setlocal path=~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,ruby-2.0.0-p0\

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
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ app/assets/templates/orders/complete_modal.jst.hamljs%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 46 - ((42 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 013l
lcd ~/workspace/pos.rb
wincmd w
argglobal
edit ~/workspace/pos.rb/app/assets/javascripts/backbone/views/orders/inline_transactions.js
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
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
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/app/views/backbone/views/orders/inline_transactions,~/workspace/pos.rb/public,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,/usr/include,
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
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ app/assets/javascripts/backbone/views/orders/inline_transactions.js%#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 31 - ((30 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 040l
lcd ~/workspace/pos.rb
wincmd w
argglobal
enew
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nnoremap <buffer> <silent> H Kb
nnoremap <buffer> <silent> T TgT
nnoremap <buffer> <silent> gv HbJ
nnoremap <buffer> <silent> go 
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> h K
nnoremap <buffer> <silent> o 
nnoremap <buffer> <silent> q :ccl
nnoremap <buffer> <silent> t T
nnoremap <buffer> <silent> v HbJt
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=wipe
setlocal buflisted
setlocal buftype=quickfix
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'qf'
setlocal filetype=qf
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,~/workspace/pos.rb,~/workspace/pos.rb/app,~/workspace/pos.rb/app/models,~/workspace/pos.rb/app/controllers,~/workspace/pos.rb/app/helpers,~/workspace/pos.rb/config,~/workspace/pos.rb/lib,~/workspace/pos.rb/app/views,~/workspace/pos.rb/spec,~/workspace/pos.rb/spec/models,~/workspace/pos.rb/spec/controllers,~/workspace/pos.rb/spec/helpers,~/workspace/pos.rb/spec/views,~/workspace/pos.rb/spec/lib,~/workspace/pos.rb/spec/requests,~/workspace/pos.rb/spec/integration,~/workspace/pos.rb/app/*,~/workspace/pos.rb/vendor,~/workspace/pos.rb/vendor/plugins/*/lib,~/workspace/pos.rb/vendor/plugins/*/test,~/workspace/pos.rb/vendor/rails/*/lib,~/workspace/pos.rb/vendor/rails/*/test,/usr/include,
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
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%9*\ NORMAL\ %9*%{g:airline_left_sep}%9*%{g:airline_enable_fugitive&&exists('g:loaded_fugitive')?\ g:airline_fugitive_prefix.fugitive#head():''}\ %9*%{g:airline_left_sep}\ %#warningmsg#%{g:airline_enable_syntastic&&exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}%9*%<%=%9*%{&ro?\ g:airline_readonly_symbol\ :''}%q%{&previewwindow?'[preview]':''}%9*\ %{strlen(&filetype)>0?&filetype:''}\ %9*%{g:airline_right_sep}%9*\ %{strlen(&fileencoding)>0?&fileencoding:''}%{strlen(&fileformat)>0?'['.&fileformat.']':''}\ %9*%{g:airline_right_sep}%9*\ %3p%%\ :%3l:%3c\ 
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=2
setlocal tags=~/workspace/pos.rb/tmp/tags,./tags,tags,~/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal winfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
lcd ~/workspace/pos.rb
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 44 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 59 + 89) / 179)
exe '2resize ' . ((&lines * 44 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 59 + 89) / 179)
exe '3resize ' . ((&lines * 44 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 59 + 89) / 179)
exe '4resize ' . ((&lines * 10 + 29) / 58)
tabnext 3
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
