function! LeftPad(string, length, ...)
  let character = a:0 == 0 ? ' ' : a:1
  let pad = ''
  while strlen(pad . a:string) < a:length
    let pad .= character
  endwhile
  return pad . a:string
endfunction
