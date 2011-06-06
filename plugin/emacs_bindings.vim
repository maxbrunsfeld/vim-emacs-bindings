" Simple navigation and editing key bindings from emacs, for Vim.
" Inspired by a much more comprehensive plugin: Vimacs, by Andre Pang.

" on macvim, use option as meta key
if has("gui_macvim")
  set macmeta
endif

" Emacs navigation and editing bindings in all modes
map <C-p> gk
map <C-n> gj
map <C-b> h
map <C-f> l
map <C-a> ^
map <C-e> $
map <M-f> w
map <M-b> b
map <M-a> {
map <M-e> }
map <C-d> dl
map <C-h> dh
map <M-d> dw
map <M-h> db
map <C-k> D
map! <C-p> <Up>
map! <C-n> <Down>
map! <C-b> <Left>
map! <C-f> <Right>
map! <C-e> <End>
map! <C-d> <Del>
map! <C-h> <BS>
imap <C-a> <C-o>^
imap <M-b> <C-o>b
imap <M-f> <C-o>e<Right>
imap <M-a> <C-o>{
imap <M-e> <C-o>}
imap <M-d> <C-o>dw
imap <M-h> <C-w>
imap <C-k> <C-o>D
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-a> <Home>
cmap <M-f> <S-Right>
cmap <M-b> <S-Left>
cmap <M-a> <Home>
cmap <M-e> <End>
cmap <M-h> <C-w>
cmap <M-d> <C-f>dwl<C-c>
cmap <C-k> <C-f>D<C-c><End>

" todo: get <C-k> and <M-d> to work right in command-line mode (w/o opening up command window)

" Emacs key bindings in Command-T configuration
let g:CommandTAcceptSelectionTabMap='<C-CR>'
let g:CommandTBackspaceMap='<C-h>'
let g:CommandTDeleteMap='<C-d>'
let g:CommandTCursorLeftMap='<C-b>'
let g:CommandTCursorRightMap='<C-f>'

