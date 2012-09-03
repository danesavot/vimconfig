set nocompatible               " be iMproved

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
"Outline all the tags (i.e. functions, subroutines, classes, macros or procedures)
Bundle 'ShowFunc.vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/tpope/vim-vividchalk.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/vim-scripts/snipMate.git'
Bundle 'git://github.com/vim-scripts/template-file-loader.git'
Bundle 'git://github.com/t9md/vim-resizewin.git'
Bundle 'git://github.com/tpope/vim-rails.git'
Bundle 'git://github.com/lucapette/vim-ruby-doc.git'
Bundle 'git://github.com/kchmck/vim-coffee-script.git'
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

colorscheme vividchalk
set background=dark
filetype plugin on
filetype indent on " Turn on file type detection.
syntax on

set mouse=a " allow to use mouse in vim terminal
set showmode " Display the mode you're in.
set showmatch " Show matching brackets/parenthesis

set incsearch " Find as you type search
hi IncSearch ctermbg=black ctermfg=red cterm=underline

set hlsearch " Highlight search terms
hi Search ctermbg=black ctermfg=red cterm=underline

" show underline in the current cursor 
set cursorline
hi CursorLine term=bold cterm=bold 

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

set laststatus=2 " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

"================ Mapping ===================
let mapleader = ","
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

"Press F4 to toggle highlighting on/off, and show current value.
"map <F4> :set hlsearch! hlsearch?<CR>
map <F4> :noh <Enter>
"pressing F3 will highlight all occurrences of the current word
nnoremap <F3> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

map <Leader>q :q <Enter>
map <Leader>s :w <Enter>
map <Leader>x :x <Enter>
" press ,h to replace each match of the last search pattern with new text
" end with -g to replace all match words in each line
"map <Leader>h :%s//

" Navigate windows with ctrl direction
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" Comment easily using these mappings: ,c to Comment. ,u to unComment
if !exists("comment_autocommands")
	let comment_autocommands = 1
	au FileType haskell,vhdl,ada,sql           let b:comment_leader = '-- '
	au FileType vim                            let b:comment_leader = '" '
	au FileType c,cpp,java,php,javascript      let b:comment_leader = '// '
	au FileType haml                           let b:comment_leader = '-# '
	au FileType ruby,sh,make,perl,map          let b:comment_leader = '# '
	au FileType tex,m                          let b:comment_leader = '% '
	noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
	noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>
endif

" Press Esc to close Command-t
let g:CommandTCancelMap=['<ESC>','<C-c>']
let g:CommandTAcceptSelectionSplitMap=['<C-CR>']
" Press F7 to call ShowFunc, press c:Close window, h:Display help dialog
map <F7> <Plug>ShowFunc
"press ,f to call seach command
map <Leader>f :Search 
"press ,n move to next search result
map <Leader>n :cnext <Enter>
"press ,N move to next file of search result
map <Leader>N :cnfile <Enter>
" move to previous search result
map <Leader>m :cprevious <Enter>
" move to previous file of search result
map <Leader>M :cpfile <Enter>
" move to the begining of the search result
map <Leader>b :crewind <Enter>
" move to the last of the search result
map <Leader>e :clast <Enter>
"press ,h to call command Replace
map <Leader>h :Replace 
"=========================Custom Command===========================
"Search xxxx : search the content of every file in the current/sub folders
command -nargs=+ Search vimgrep /<args>/ **
"Replace xxxx : replace each match of the previous search pattern with xxxx
command -nargs=+ Replace %s//<args>/g
