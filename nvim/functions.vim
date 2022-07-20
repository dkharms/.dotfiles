function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd VimLeave * let &t_me="\<Esc>]50;CursorShape=1\x7"
