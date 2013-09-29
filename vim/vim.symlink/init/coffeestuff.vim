augroup mycoffee
  au!
  "Abbrevs
    au FileType coffee :iabbrev <buffer> this @ 
    au FileType coffee :iabbrev <buffer> this @ 
  "Conversion Macros
    au FileType coffee :let @f = '/functiondw%f{ma%x`as ->'
    au FileType coffee :let @s = ':%s/\;//g'
    au FileType coffee :let @t = ':%s/this\./@/g'
    au FileType coffee :let @c = ':%s/\/\//#/g'
    au FileType coffee :let @h = '/that\.:nohlsearchc5l@'
    au FileType coffee :let @b = 'f(ma%x`ar /{ma%x`ax'
augroup end
