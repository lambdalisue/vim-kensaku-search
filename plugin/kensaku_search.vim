if exists('g:loaded_kensaku_search')
  finish
endif
let g:loaded_kensaku_search = 1

cnoremap <silent><expr> <Plug>(kensaku-search-replace) kensaku_search#replace()
