" Editor color
:color murphy
syntax enable

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
filetype indent on

" Word wrap
set nowrap

" Parenthesis matching
set showmatch

" Enhanced searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Folding
set foldenable
set foldmethod=syntax
set foldlevelstart=10
nnoremap <C--> za

" autocmd to reload file with mixed line endings (^M)
" source: http://vim.wikia.com/wiki/Automatically_reload_files_with_mixed_line-endings_in_DOS_fileformat
autocmd BufReadPost * nested
      \ if !exists('b:reload_dos') && !&binary && &ff=='unix' && (0 < search('\r$', 'nc')) |
      \   let b:reload_dos = 1 |
      \   e ++ff=dos |
      \ endif

" Performance
set lazyredraw

" Line numbers
set number
