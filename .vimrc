"------------------------------------------------------------
" General settings
"------------------------------------------------------------
set encoding=utf-8                                          " Set how vim shall represent characters internally
set termencoding=utf-8                                      " Define how your keyboard encodes what you type
set fileencoding=utf-8                                      " Set the encoding for a particular file
set secure                                                  " Prohibit .vimrc files to execute shell, create files, etc.

" See: https://blog.victormendonca.com/2017/09/20/additional-status-for-vim-with-powerline/
set laststatus=2                                            " Always display the status bar
let g:powerline_pycmd = 'py3'                               " Make sure powerline can be loaded

" If you have vim >=8.0 or Neovim >= 0.1.5
set t_Co=256                                                " Enable 256 colors palette
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"------------------------------------------------------------
" Look & Feel
"------------------------------------------------------------
set ttyfast                                                 " Improves smoothness of redrawing
syntax enable                                               " Enable syntax highlighting
set ruler                                                   " Always show cursor position
set cmdheight=2                                             " Avoid the 'Hit ENTER to continue' prompts
set display+=lastline                                       " Always try to show a paragraph’s last line
set wildmenu                                                " Display command line’s tab complete options as a menu

set cursorline                                              " Highlight the line currently under cursor
set showmatch                                               " Highlight matching parentheses / brackets [{()}]
set number                                                  " Show line numbers on the sidebar
set mouse=a                                                 " Enable mouse for scrolling and resizing
set title                                                   " Set the window’s title, reflecting the file currently being edited
"set background=dark                                        " Use colors that suit a dark background
colorscheme slate                                           " Default color theme
let g:airline_theme='onehalfdark'                           " Status line theme

"------------------------------------------------------------
" Editor settings
"------------------------------------------------------------
filetype plugin indent on                                   " Enable indentation rules that are file-type specific
set smartindent                                             " Even better autoindent (e.g. add indent after '{')
set expandtab                                               " Convert tabs to spaces
set smarttab                                                " Insert "tabstop" number of spaces when the “tab” key is pressed
set tabstop=4                                               " Indent using four spaces
set shiftwidth=4                                            " Number of spaces to use for each step of (auto)indent
set softtabstop=4                                           " Backspace after pressing <TAB> will remove up to this many spaces

set hlsearch                                                " Enable search highlighting
set ignorecase                                              " Ignore case when searching
set incsearch                                               " Incremental search that shows partial matches
set smartcase                                               " Automatically switch search to case-sensitive when search query contains an uppercase letter
autocmd BufWritePre * :%s/\s\+$//e                          " Trim trailing whitespace on save

"------------------------------------------------------------
" Miscellaneous settings
"------------------------------------------------------------
set backupdir=~/.cache/vim                                  " Directory to store backup files
set dir=~/.cache/vim                                        " Directory to store swap files

set history=1000                                            " Increase the undo limit
set spell                                                   " Enable spellchecking

set autoread                                                " Auto reload the file in Vim if it has been changed outside of Vim
