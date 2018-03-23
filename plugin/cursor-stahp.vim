if exists('g:loaded_cursor_stop')
  finish
endif
let g:loaded_cursor_stop = 1

let CursorColumnI = 0 "the cursor column position in INSERT
augroup CursorStahp
  autocmd!
  autocmd InsertEnter * let CursorColumnI = col('.')
  autocmd CursorMovedI * let CursorColumnI = col('.')
  autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif
augroup END
