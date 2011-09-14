" Simple navigation and editing key bindings from emacs, for Vim.
" Inspired by a much more comprehensive plugin: Vimacs, by Andre Pang.

" TODO
"   command mode:
"     - <C-k> and <M-d> should not open command window

" on macvim, use option as meta key
if has("gui_macvim")
  set macmeta
endif

function! EmacsHome()
  let start_col = col('.')
  normal! ^
  if col('.') == start_col
    normal! 0
  endif
  return ''
endfunction

function! EmacsKillLine()
  let col = col('.')
  let line_text = getline(line('.'))
  let text_after_cursor  = line_text[col-1 :]
  let text_before_cursor = (col > 1) ? line_text[: col-2] : ''
  if len(text_after_cursor) == 0
    normal! J
  else
    call setline(line('.'), text_before_cursor)
  endif
  return ''
endfunction

" normal mode
"  - navigation
map <C-p> gk
map <C-n> gj
map <C-b> h
map <C-f> l
map <silent> <C-a> :call EmacsHome()<CR>
map <C-e> $
map <M-b> b
map <M-f> e
map <M-a> {
map <M-e> }

" insert mode
"  - navigation
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call EmacsHome()<CR>
imap <C-e> <End>
imap <M-b> <C-o>b
imap <M-f> <C-o>e<Right>
imap <M-a> <C-o>{
imap <M-e> <C-o>}
"  - editing
imap <C-d> <Del>
imap <C-h> <BS>
imap <M-d> <C-o>dw
imap <M-h> <Space><Left><C-o>db<Del>
imap <C-k> <C-r>=EmacsKillLine()<CR>

" command line mode
"  - navigation
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>
cmap <M-f> <S-Right>
cmap <M-b> <S-Left>
cmap <M-a> <Home>
cmap <M-e> <End>
"  - editing
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <M-h> <C-w>
cnoremap <M-d> <C-f>dwl<C-c>
cnoremap <C-k> <C-f>D<C-c><End>

" command-T window
let g:CommandTCursorLeftMap  = ['<Left>',  '<C-b>']
let g:CommandTCursorRightMap = ['<Right>', '<C-f>']
let g:CommandTBackspaceMap   = ['<BS>',    '<C-h>']
let g:CommandTDeleteMap      = ['<Del>',   '<C-d>']

