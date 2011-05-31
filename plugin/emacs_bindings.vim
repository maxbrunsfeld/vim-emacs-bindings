" Simple navigation and editing key bindings from emacs, for Vim.
" Inspired by a much more comprehensive plugin: Vimacs, by Andre Pang.

" on macvim, use option as meta key
if has("gui_macvim")
  set macmeta
endif

" Emacs navigation and editing bindings in all modes
noremap <C-p> gk
noremap <C-n> gj
noremap <C-b> h
noremap <C-f> l
noremap <C-a> ^
noremap <C-e> $
noremap <M-f> e<Right>
noremap <M-b> b
noremap <M-a> {
noremap <M-e> }
noremap <C-d> dl
noremap <C-h> dh
noremap <M-d> dw
noremap <M-h> db
noremap <C-k> D
noremap! <C-p> <Up>
noremap! <C-n> <Down>
noremap! <C-b> <Left>
noremap! <C-f> <Right>
noremap! <C-e> <End>
noremap! <C-d> <Del>
noremap! <C-h> <BS>
inoremap <C-a> <C-o>^
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>e<Right>
inoremap <M-a> <C-o>{
inoremap <M-e> <C-o>}
inoremap <M-d> <C-o>dw
inoremap <M-h> <C-w>
inoremap <C-k> <C-o>D
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-a> <Home>
cnoremap <M-f> <S-Right>
cnoremap <M-b> <S-Left>
cnoremap <M-a> <Home>
cnoremap <M-e> <End>
cnoremap <M-h> <C-w>
cnoremap <M-d> <C-f>dwl<C-c>
cnoremap <C-k> <C-f>D<C-c><End>

" todo: get <C-k> and <M-d> to work right in command-line mode (w/o opening up command window)

" Emacs key bindings in Command-T configuration
let g:CommandTAcceptSelectionTabMap='<C-CR>'
let g:CommandTBackspaceMap='<C-h>'
let g:CommandTDeleteMap='<C-d>'
let g:CommandTCursorLeftMap='<C-b>'
let g:CommandTCursorRightMap='<C-f>'

