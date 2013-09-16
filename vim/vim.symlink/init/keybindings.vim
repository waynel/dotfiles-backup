"muscle memory helpers
nn WW :echo("Use ;s")
"inoremap <esc> <nop>
"; keybindings (circa "http://reefpoints.dockyard.com/2013/09/11/vim-staying-on-home-row-via-map.html)
  nm ; :
  nn ;; ;
  ino ;a <Esc>
  ino ;s <C-O>:w!<Cr>
  nn ;s :w!<cr>
  ino ;d <Esc>:w!<Cr>
  "paste help of os x
  ino ;v <C-O>:r!pbpaste<Cr>
  nn ;v :r!pbpaste<Cr>
  vn Y "+y
"General
  let mapleader=","
  let maplocalleader=" "
  "quicker change and deletes
  ono L $
  ono H 0
  nn <leader>H :help 
  "state shortcuts
  nn QQ :q!<cr>
  "nnoremap WW :w!<cr>
  nn EE :e!<cr>
  nn CC :ccl<cr>
  "Search Selected Text
    vn * y/<c-r>"<cr>
" save
  no <leader>ss :mksession! ~/.vim/sessions/last.vim<cr>
  no <leader>SS :mksession! ~/.vim/sessions/
  no <leader>oo :source ~/.vim/sessions/last.vim<cr>
  no <leader>OO :source ~/.vim/sessions/
" run scrap ruby
  nn <leader>rb :w! ~/scrap.rb<cr>:r !ruby %<cr>
"Reload
  nn <leader>rv :source $MYVIMRC<cr>
  nn <leader>rs :call ReloadAllSnippets()<cr>
  nn <leader>erc :vsp ~/.vimrc<cr>
  nn <leader>ek :vsp ~/.vim/init/keybindings.vim<cr>
  nn <leader>ea :vsp ~/.vim/init/abbreviations.vim<cr>
  nn <leader>eo :vsp ~/.vim/init/options.vim<cr>
"Split stuff
  nn <leader>v :vnew<cr>
  no <leader>h :new<cr>
"Swap Lines Like TextMate
  nn <C-J> ddp
  nn <C-K> ddkP
  "clear unused buffers
  function! CloseUnloadedBuffers()
      let lastBuffer = bufnr('$')

      let currentBuffer = 1
      while currentBuffer <= lastBuffer
          " If buffer exists, is shown in :ls output, and isn't loaded
          if bufexists(currentBuffer) && buflisted(currentBuffer) && bufloaded(currentBuffer) == 0
              execute 'bdelete' currentBuffer
          endif

          let currentBuffer = currentBuffer + 1
      endwhile
  endfunction
"plugins
  "Ctrl-P
    nn <leader>f :CtrlP<cr>
  "Tabular
    nn  <leader>=  :Tabularize /
  "Gundo
    nn <leader>u :GundoToggle<cr>
  "Ag
    nn <leader>a :Ag! -QS<space>
    nn <leader>A :AgFromSearch -QS<cr>
    vn <silent> <leader>a y:Ag!<space><c-r>"<cr>
    vn <silent> <leader>A y:AgFile<space><c-r>"<cr>
  "Zoomwin
    nn <leader><leader> :ZoomWin<cr>
  "Git Stuff
    nn <silent> <leader>gb :Gblame<cr>
    nn <silent> <leader>gc :Gcommit<cr>
    nn <silent> <leader>gs :Gstatus<cr>
    nn <silent> <leader>gd :Gdiff<cr>
    nn <silent> <leader>gh :Gbrowse<cr>
    nn <silent> <leader>ge :Gedit<cr>
    nn <silent> <leader>gl :Glog<cr>
  "Vimux Stuff
    "this is just annoying
      no <silent><leader>r :<cr>
    "prompt for a command to run
      nn <leader>RR  :VimuxPromptCommand<cr>
      nn <leader>rr  Vy:call VimuxRunCommand('<c-r>"')<CR>
      vn <leader>rr  y:call VimuxRunCommand('<c-r>"')<CR>
      nn <leader>rl  :VimuxRunLastCommand<cr>
      nn <leader>rx  :VimuxCloseRunner<cr>
      nn <leader>rc  :let VimuxUseNearestPane = 1<cr>
 "Coffee Stuff
      nn <silent><leader>cc  :CoffeeCompile vert<cr>
      nn <silent><leader>cr  :CoffeeRun<cr>
      nn <silent><leader>cp  :! coffee --compile %:p<cr>
 "Markdown Stuff
      nn <silent><leader>md  :call MarkdownPreview()<cr>
      function! MarkdownPreview()
          "compile the markdown
            let buffer   = bufname("%")
          "create a scratch split
            vsplit __MARKDOWN_PREVIEW__
            normal! ggdG
            setlocal buftype=nofile
          "insert compiled html
            execute "r ! /Users/rich/bin/markdown " . buffer . " | lynx -stdin -dump"

      endfunction
