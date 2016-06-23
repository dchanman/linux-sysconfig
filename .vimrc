" Editor color
:color murphy

" Tab navigation
nnoremap <F6> :tabe 
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>
:inoremap <F6> <c-o>:tabe
:inoremap <F7> <c-o>:tabp<CR>
:inoremap <F8> <c-o>:tabn<CR>

nnoremap <C-tab> :tabn<CR>
:inoremap <C-tab> <c-o>:tabn<CR>
nnoremap <C-S-tab> :tabp<CR>
:inoremap <C-S-tab> <c-o>:tabp<CR>

" Navigation shortcuts
nmap <space> zz

" Tab widths
set tabstop=4

" Word wrap
set nowrap

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
" source: http://vim.wikia.com/wiki/Map_Ctrl-S_to_save_current_or_new_files
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
:inoremap <c-s> <c-o>:Update<CR>

" autocmd to reload file with mixed line endings (^M)
" source: http://vim.wikia.com/wiki/Automatically_reload_files_with_mixed_line-endings_in_DOS_fileformat
autocmd BufReadPost * nested
      \ if !exists('b:reload_dos') && !&binary && &ff=='unix' && (0 < search('\r$', 'nc')) |
      \   let b:reload_dos = 1 |
      \   e ++ff=dos |
      \ endif



"filetype plugin
