set shiftwidth=4 tabstop=4 expandtab tw=80
syntax enable
set number cursorline
filetype indent on
set incsearch hlsearch

"GUI
set guifont=Monospac821_BT:h10:cANSI:qDRAFT
colo PaperColor
set background=dark

"Save the file with Ctrl+s (requires the file to be named)
noremap <C-s> <Esc>:update<CR>
inoremap <C-s> <Esc>:update<CR>gi

"Auto complete of paranthesis, brackets, etc.
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap { {<CR>}<Esc>O

"Remove trailing white space by pressing <F6>
nnoremap <F6> :%s/\s\+$//e<CR>

"Allow toggling of the auto complete shortcuts
let autocomp = 0
function AutoComp()
    if g:autocomp
        inoremap ( ()<Esc>i
        inoremap [ []<Esc>i
        inoremap " ""<Esc>i
        inoremap ' ''<Esc>i
        inoremap { {<CR>}<Esc>O
        echom "Auto complete is on"
        let g:autocomp = 0
    else
        iunmap (
        iunmap [
        iunmap "
        iunmap '
        iunmap {
        echom "Auto complete is off"
        let g:autocomp = 1
    endif
endf
noremap <A-A> <Esc>:call AutoComp()<CR>

"Tab navigation DOES NOT WORK
nnoremap <C-S-Tab> :tabprevious<CR>
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-S-Tab> <Esc>:tabprevious<CR>gi
inoremap <C-Tab> <Esc>:tabnext<CR>gi
inoremap <C-t> <Esc>:tabnew<CR>

"Split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Undo mapping
noremap <C-Z> :undo<CR>
inoremap <C-Z> <Esc>:undo<CR>i
noremap <C-S-Z> :redo<CR>
inoremap <C-S-Z> <Esc>:redo<CR>i

"Shift lines
nnoremap <C-S-Down> :m+<CR>==
nnoremap <C-S-Up> :m-2<CR>==
inoremap <C-S-Down> <Esc>:m+<CR>==gi
inoremap <C-S-Up> <Esc>:m-2<CR>==gi

"Time to learn how to navigate vim without the arrows
noremap <Right> <NOP>
noremap <Left> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
