" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" plugin management
call pathogen#infect()

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
set clipboard=unname

set mouse=a
set bs=2

let mapleader = ","

" Quick save command
noremap <Leader>s :update<CR>

" Quick exit command
noremap <Leader>q :quit<CR>

""bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" The Smash Escape
inoremap jk <Esc>
inoremap kj <Esc>

" Command-line editing style
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
noremap <C-a> <Home>
"noremap <C-e> <End>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <C-t> <Esc>:tabnew<CR>
map <Leader>f <Esc>:tabf 

" map sort function to a key
vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" set t_Co=256
" color wombat256mod

" Solarized colors
" syntax enable
set background=dark
colorscheme  solarized

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing 
set colorcolumn=80
highlight ColorColumn ctermbg=000

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
