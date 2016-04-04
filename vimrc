set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
"git interface
Plugin 'tpope/vim-fugitive'
"filesystem
Plugin 'ctrlpvim/ctrlp.vim'
"html
Plugin 'isnowfy/python-vim-instant-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'
"python syntax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ivanov/vim-ipython'
"auto-completion stuff
Plugin 'Townk/vim-autoclose'
Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
""code folding
Plugin 'tmhedberg/SimpylFold'
"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'atelierbram/vim-colors_duotones'

Plugin 'wakatime/vim-wakatime'
"items
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'

call vundle#end()

filetype plugin indent on    " enables filetype detection
let g:syntastic_python_python_exec = '/Library/Frameworks/Python.framework/Versions/3.5/bin/python3'
let g:SimpylFold_docstring_preview = 1
"see if this fixes pymode hanging. I think it tries to scan the current
"working directory. Which is often my home drive depending on how I initialize
"vim.
"let g:pymode_rope_lookup_project = 0
set autochdir
"autocomplete
let g:ycm_autoclose_preview_window_after_completion=1
let g:pydiction_location = '~/.vim/Pydiction/complete-dict'
"custom keys
let mapleader=" "
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"ctrlp
map <leader>\  :CtrlP<CR>
"Buffer nav
map <leader>n  :bnext<CR>
map <leader>m  :bprev<CR>
map <leader>x  :bdelete<CR>
map <leader>z  :bdelete!<CR>
"window resizing
map <leader>=  <C-W><C-=>
map <leader>-  :res -5<CR>
map <leader>+  :res +5<CR>
"page up and down with jk
map <leader>j  <C-f>
map <leader>k  <C-b>
map <leader>w  5W
map <leader>4  $
map <leader>6  ^
"unfold all
map <leader>u  zR
"save
map <leader>s  :w<CR>
map <leader>q  :q!<CR>
"open brackets find '(', '{', & '['
"close bracket Change Insided Bracket '(', '{', & '['
map <leader>9  /(<CR>
map <leader>0  ci)
map <leader>[  /[<CR>
map <leader>]  ci]
map <leader>{  /{<CR>
map <leader>}  ci}
"temporarily toggles off hlsearch
map <leader>h  :noh<CR>
"change inner word by default
map <leader>c  ciw
map <leader>C  ciW
"comment a paragraph
map <leader>/  gcap

call togglebg#map("<F8>")
"colorscheme zenburn
"set guifont=Monaco:h14

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"I don't like swap files
set noswapfile

"turn on numbering
set nu

"python with virtualenv support
py << EOF
import os.path
import sys
import vim
if 'VIRTUA_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0, project_base_dir)
  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"it would be nice to set tag files by the active virtualenv here
":set tags=~/mytags "tags for ctags and taglist
"omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za
"----------Stop python PEP 8 stuff--------------

"js stuff"
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2


set wildmenu
set relativenumber
"search highlight and incremental search
set hlsearch
set incsearch

"statusline
" format markers:
"   %t File name (tail) of file in the buffer
"   %m Modified flag, text is " [+]"; " [-]" if 'modifiable' is off.
"   %r Readonly flag, text is " [RO]".
"   %y Type of file in the buffer, e.g., " [vim]".
"   %= Separation point between left and right aligned items.
"   %l Line number.
"   %L Number of lines in buffer.
"   %c Column number.
"   %P percentage through buffer
set statusline=%t\ %m%r%y%=(ascii=\%03.3b,hex=\%02.2B)\ (%l/%L,%c)\ (%P)\ %{fugitive#statusline()}
set laststatus=2
"change highlighting based on mode
if version >= 700
  highlight statusLine cterm=bold ctermfg=white ctermbg=blue
    au InsertLeave * highlight StatusLine cterm=bold ctermfg=white ctermbg=blue
      au InsertEnter * highlight StatusLine cterm=bold ctermfg=black ctermbg=green
      endif



" moves to window in the direction shown, or create a new split in that
" direction
" ----------------------------------------------------------------------------
func! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfu

nnoremap <silent> <C-h> :call WinMove('h')<cr>
nnoremap <silent> <C-j> :call WinMove('j')<cr>
nnoremap <silent> <C-k> :call WinMove('k')<cr>
nnoremap <silent> <C-l> :call WinMove('l')<cr>

"80 character line
highlight ColorColumn ctermbg=darkblue
call matchadd('ColorColumn', '\%81v', 100)

set cursorline
hi CursorLine   ctermbg=darkblue
"for esc delay (testing)
set timeoutlen=1000 ttimeoutlen=0

