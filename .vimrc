set nocompatible               " be iMproved
filetype off                   " required!set showcmd " Display incomplete commands.

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/tpope/vim-vividchalk.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not al

set showmode " Display the mode you're in.
set showmatch " Show matching brackets/parenthesis

set incsearch " Find as you type search
set hlsearch " Highlight search terms
set ignorecase " Case-insensitive searching.
set smartcase " But case-sensitive if expression contains a capital letter.

set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

set backspace=indent,eol,start " Intuitive backspacing.
set hidden " Handle multiple buffers better.
set title " Set the terminal's title
set number " Show line numbers.
set showbreak=...
set ruler " Show cursor position.
set nowrap " Turn off line wrapping.
set wildmode=list:longest " Complete files like a shell.
set wildmenu " Enhanced command line completion.
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set novisualbell
set noerrorbells
set history=1000 " Store lots of :cmdline history

set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set mouse-=a
set mousehide
set ttymouse=xterm2

set nobackup " Don't make a backup before overwriting a file.
set nowritebackup " And again.
set directory=/tmp " Keep swap files in one location
set timeoutlen=500

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set pastetoggle=<F2>

set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

autocmd BufRead,BufNewFile *.md setlocal wrap linebreak

filetype plugin on
filetype indent on " Turn on file type detection.
syntax on
colorscheme vividchalk
set background=dark

set laststatus=2 " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

"================ Mapping ===================
let mapleader = ","
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

