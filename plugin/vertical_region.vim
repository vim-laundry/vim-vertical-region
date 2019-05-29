"
" vertical_region.vim: Mapping targets to move up or down to lines that have
" non-space characters before or in the current column, usually to find lines
" that begin or end blocks in languages where indenting is used to show or
" specify structure.
"
" Author: Tom Ryder <tom@sanctum.geek.nz>
" License: Same as Vim itself
"
if exists('loaded_vertical_region') || &compatible || v:version < 700
  finish
endif
let loaded_vertical_region = 1

" Define plugin maps
noremap <silent> <Plug>(VerticalRegionUp)
      \ :<C-U>call vertical_region#(v:count1, 1, 'n')<CR>
sunmap <Plug>(VerticalRegionUp)
noremap <silent> <Plug>(VerticalRegionDown)
      \ :<C-U>call vertical_region#(v:count1, 0, 'n')<CR>
sunmap <Plug>(VerticalRegionDown)
