"""""""""""""""""""""""""""""""""""""""""""
" Commands / Key Mappings
""""""""""""""""""""""""""""""""""""""""""
" http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
" <S-...> Shift
" <C-...> Control
" <M-...> Alt
" <A-...> Alt
" <D-...> command (moc only) super?

" I use DVorak... So vim is a little harder... yay.
" This maps the querty keys to the equiv dvorak for home position
" This notation is: <dvorak><querty>
" H - Left, K - Up, L - Right, J - Down
" I prefer WASD-inspired: h-left, t-down, n-right, c-up
" The querty equiv :      j       k       l        i
" h doesn't need to change
set langmap=tj,ck,nl,jc,kv,bn


" Use Single quote for the <leader> key, cause it's closer than the default
" back slash
let mapleader = "'"

" Use Semicolon instead of colon for commands
" Two less keystrokes
nnoremap ; :

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Nerd Tree-Specfic Window Management
" Toggle Nerd Tree
nmap <leader><BSlash> :NERDTreeToggle <CR>
nmap <C-c> <plug>NERDTreeMapOpenVSplit <CR>
nmap <leader>nt <plug>NERDTreeTabsToggle<CR>
" Toggle focus to Nerd Tree
nmap <leader>l :NERDTreeFind<CR>

" s - splits to the right
" o - splits below

map <S-i> :vertical resize +10<CR>
map <C-<S-i>> :vertical resize +2<CR>
map <S-F6> :resize -10<CR>
map <S-F7> :resize +10<CR>
map <F6> :resize -2<CR>
map <F7> :resize +2<CR>
map <S-F8> :vertical resize -10<CR>
map <F8> :vertical resize -2<CR>


" Tab-Completion?
imap <Tab> <C-P>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Notes for myself, because holy cow, there are a lot of shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gt/gT - switch tabs (prev/next)
" <C-w w> switch panes (randomly?)
" :m # - moves line below the specified line number
" :#,#m # - moves line range to line below specified number
" :m +# to move it # lines up
" o - new line below
" shift o - new line above

" Live Moving (Up and Down)
" Set to control (<A-k> : up, <A-j> : down)
let g:move_key_modifier = 'A'

nnoremap <A-t> :m .+1<CR>==
nnoremap <A-c> :m .-2<CR>==
inoremap <A-t> <Esc>:m .+1<CR>==gi
inoremap <A-c> <Esc>:m .-2<CR>==gi
vnoremap <A-t> :m '>+1<CR>gv=gv
vnoremap <A-c> :m '<-2<CR>gv=gv


"""""""""""""
" Navigation
"""""""""""""
" Exit insert mode upon arrow key navigation
inoremap <silent> <Up> <ESC><Up>
inoremap <silent> <Down> <ESC><Down>

" Make home got to the first non-whitespace character on the line
imap <Home> <Esc>^i
map <Home> ^

" Shift Home goes to the beginning of the line
imap <S-<Home>> <Esc>0i
map <S-<Home>> 0


""""""""""""""
" Commenting
""""""""""""""
" https://github.com/scrooloose/nerdcommenter
" 'cc comments out line or selection
" 'c<space> toggles comment
map <leader>/   <plug>NERDCommenterToggle


"""""""""""""
" File Finding
"""""""""""""
nmap <C-t> :Files<cr>


" Sensible Indentation with Tab!
vmap <TAB> >gv
vmap <S-TAB> <gv

" Auto-Correct Ruby
map <leader>r :!rubocop -a % <CR>

" Save, cause habits
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

" Quit one pane"
nmap <leader>w :q<CR>
" Quit EVERYTHING - (Triggers session save)
nmap <leader>q :qa<CR>

"""""""""""""""""""""""
" Indentation Fixing
"""""""""""""""""""""""
nmap <leader><Tab><Space> :set expandtab <CR>:retab<CR>
nmap <leader><Space><Tab> :set noexpandtab<CR>:retab!<CR>
