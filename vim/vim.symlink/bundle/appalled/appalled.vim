if exists("g:appalled.vim")
  finish
else
  let g:appalled.vim
endif
"
"Pretty Print that dog
function JsonFormat()
  execute  '%!python -m json.tool'
endfunction
