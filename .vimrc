set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/Smart-Tabs'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent		" always set autoindenting on
set backup		" keep a backup file
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on
set hlsearch

map <C-e> :w<CR>\be

set number

"set path=/Users/sstanf/litus/**
"map <C-a> :wa<CR>:compiler ant<CR>:make deploy<CR>
"map <C-c> :wa<CR>:compiler ant<CR>:make<CR>
"map <C-n> :cnext<CR>

" Command buffer keystrokes for creating set/get methods
"map <C-x> ^w"ayww"bywopublic void set"bpblll~A("api "bpA)hxo{this."bpA = "bpA;}public "api get"bpblll~AxA(){return "bpA;}j

"imap <C-x> <ESC>^w"ayww"bywopublic void set"bpblll~A("api "bpA)hxo{this."bpA = "bpA;}public "api get"bpblll~AxA(){return "bpA;}<CR>

set backupdir=$HOME/.vimfiles
set directory=$HOME/.vimfiles

" Turn off the bloody beepin.
set vb

"set t_Co=256
" Need this t_ut with xfce (and other terms) so the whole screen is correct
" background color.
set t_ut=
set background=dark
"set background=light
let g:solarized_visibility="low"
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
"highlight SpecialKey ctermfg=14 ctermbg=8

map <C-n> :NERDTreeToggle<CR>

" For easy moving between pains.
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
imap <silent> <C-Up> <ESC>:wincmd k<CR>
imap <silent> <C-Down> <ESC>:wincmd j<CR>
imap <silent> <C-Left> <ESC>:wincmd h<CR>
imap <silent> <C-Right> <ESC>:wincmd l<CR>
" Emulate my tmux bindings.
nmap <silent> <C-A><Up> :wincmd k<CR>
nmap <silent> <C-A><Down> :wincmd j<CR>
nmap <silent> <C-A><Left> :wincmd h<CR>
nmap <silent> <C-A><Right> :wincmd l<CR>
imap <silent> <C-A><Up> <ESC>:wincmd k<CR>
imap <silent> <C-A><Down> <ESC>:wincmd j<CR>
imap <silent> <C-A><Left> <ESC>:wincmd h<CR>
imap <silent> <C-A><Right> <ESC>:wincmd l<CR>

"inoremap <Up> <ESC>k
"inoremap <Down> <ESC>j
"inoremap <silent> <Up> <ESC><Up>
"inoremap <silent> <Down> <ESC><Down>
"nnoremap <Up> <nop>
"nnoremap <Down> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>
"inoremap <Left> <ESC>h
"inoremap <Right> <ESC>l

nnoremap <C-S> :wa<CR>
imap <C-S> <ESC>:wa<CR>

" Show whitespace
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set listchars=eol:¬,tab:>\ ,trail:~,extends:>,precedes:<,space:·
set list
noremap <C-l> :set list!<CR>

" Use tabs as tabs and work with smart tabs plugin...
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set autoindent

"nmap <C-`> :Ag <c-r>=expand("<cword>")<cr><cr>
nnoremap <space>/ :Ag <c-r>=expand("<cword>")<cr>
nnoremap <C-X> :NERDTreeClose<CR>:mksession! .vim-session<CR>:wa<CR>:qa<CR>
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" For more normal cut and paste.
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+



set encoding=utf-8
set scrolloff=3
"set showmode
set showcmd
"set hidden
set wildmenu
"set wildmode=list:longest
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undodir=$HOME/.vimfiles
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
set cc=80
nnoremap ; :
au FocusLost * :wa
" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>




" Retab the indent of a file - ie only the first nonspace
fun! s:SlsIndent( bang, firstl, lastl, tab )
	let l = a:firstl
	while l <= a:lastl
		let txt=getline(l)
		let txt=substitute(txt,'\s\+$','','')
		let previousNum = prevnonblank(l - 1)
		let pi = indent(previousNum)
		let i = indent(l)
		let ti = (i>(pi+&tabstop)?i+&tabstop:i)
		let tabs = (&expandtab ? (1) : (ti / &tabstop))
		let spaces =(&expandtab ? (i) : (i - (tabs * &tabstop)))
		let txtindent=repeat("\<tab>",tabs).repeat(' ',spaces)
		let txt=substitute(txt,'^\s*',txtindent,'')
		call setline(l, txt )

		let l=l+1
	endwhile
endfun


" Retab the indent of a file - ie only the first nonspace.
"   Optional argument specified the value of the new tabstops
"   Bang (!) causes trailing whitespace to be gobbled.
com! -nargs=? -range=% -bang -bar SlsIndent call <SID>SlsIndent(<q-bang>,<line1>, <line2>, <q-args> )
