" Editor color
:color murphy

" Tab navigation
nnoremap <F6> :tabe 
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" Navigation for word wrap
" nnoremap k gk 
" nnoremap j gj
" nnoremap gk k
" nnoremap gj j

" Tab widths
set tabstop=4

" autocmd to reload file with mixed line endings (^M)
" source: http://vim.wikia.com/wiki/Automatically_reload_files_with_mixed_line-endings_in_DOS_fileformat
autocmd BufReadPost * nested
      \ if !exists('b:reload_dos') && !&binary && &ff=='unix' && (0 < search('\r$', 'nc')) |
      \   let b:reload_dos = 1 |
      \   e ++ff=dos |
      \ endif



"filetype plugin
