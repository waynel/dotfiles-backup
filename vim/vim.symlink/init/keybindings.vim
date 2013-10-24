noremap K ""
" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
  let line = line('.')
  let column = col('.')
  let lastline = line('$')
  let indent = indent(line)
  let stepvalue = a:fwd ? 1 : -1
  while (line > 0 && line <= lastline)
    let line = line + stepvalue
    if ( ! a:lowerlevel && indent(line) == indent ||
          \ a:lowerlevel && indent(line) < indent)
      if (! a:skipblanks || strlen(getline(line)) > 0)
        if (a:exclusive)
          let line = line - stepvalue
        endif
        exe line
        exe "normal " column . "|"
        return
      endif
    endif
  endwhile
endfunction

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> [, :call NextIndent(0, 0, 0, 1)<CR>
nnoremap <silent> ], :call NextIndent(0, 1, 0, 1)<CR>
nnoremap <silent> [< :call NextIndent(0, 0, 1, 1)<CR>
nnoremap <silent> ]< :call NextIndent(0, 1, 1, 1)<CR>
vnoremap <silent> [, <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ], <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [< <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]< <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> [, :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ], :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [< :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]< :call NextIndent(1, 1, 1, 1)<CR>
"General
  "Search Selected Text
    vnoremap * y/<c-r>"<cr>
" save
  noremap <leader>ss :mksession! ~/.vim/sessions/last.vim<cr>
  noremap <leader>SS :mksession! ~/.vim/sessions/
  noremap <leader>oo :source ~/.vim/sessions/last.vim<cr>
  noremap <leader>OO :source ~/.vim/sessions/
" run scrap ruby
  nnoremap <leader>rb :w! ~/scrap.rb<cr>:r !ruby %<cr>
"Reload
  nnoremap <leader>rv :source $MYVIMRC<cr>
  nnoremap <leader>rs :call ReloadAllSnippets()<cr>
  nnoremap <leader>erc :vsp ~/.vimrc<cr>

  nnoremap <leader>ek :vsp ~/.vim/init/keybindings.vim<cr>
  nnoremap <leader>em :vsp ~/Code/Projects/vim/vim-emacs-and-cheese/plugin/emacs-and-cheese.vim<cr>
  nnoremap <leader>tt :vsp ~/Dropbox/Todotxt/todo.txt<cr>
  nnoremap <leader>egc :vsp ~/.gitconfig<cr>
  nnoremap <leader>eab :vsp ~/.vim/init/abbreviations.vim<cr>
  nnoremap <leader>eo :vsp ~/.vim/init/options.vim<cr>
  nnoremap <leader>eal :vsp ~/dotfiles/sh/aliases.sh<cr>

"only open buffers
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
nnoremap <leader>b :call CloseUnloadedBuffers()<cr>
"plugins
  "Ctrl-P
    nnoremap <leader>f :find 
  "Tabular
    vnoremap  <leader>=  :Tabularize /
  "Ag
    nnoremap <leader>a :Ag! -QS<space>
    nnoremap <leader>A :AgFromSearch -QS<cr>
    vnoremap <silent> <leader>a y:Ag!<space><c-r>"<cr>
    vnoremap <silent> <leader>A y:AgFile<space><c-r>"<cr>
    "nnoremap <leader>g :silent execute "grep! -R ". shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>:redraw!<cr>
  "Zoomwin
    nnoremap <leader>z :ZoomWin<cr>
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
 "Coffee Stuff
      nnoremap <silent><leader>cc  :CoffeeCompile vert<cr>
      nnoremap <silent><leader>cr  :CoffeeRun<cr>
      nnoremap <silent><leader>cp  :! coffee --compile %:p<cr>
 "Markdown Stuff
      nnoremap <silent><leader>md  :call MarkdownPreview()<cr>
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
