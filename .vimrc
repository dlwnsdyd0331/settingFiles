scripte utf-8
"""""""""""""""""""""""""""""""""""""""""""
" 프로그램 기본 설정
"""""""""""""""""""""""""""""""""""""""""""
set nocompatible    "VIM만 사용
set all&            "옵션복원
set hi=100          "명령어 기록 갯수
set loadplugins     "프로그램 시작시 플러그인 로딩
filetype on

" 인코딩 설정
set fenc=utf-8
set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1

""""""""""""""""""""""""""""""""""""""""""
" configuration for vundle
""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle 
call vundle#rc()

Bundle 'gmarik/vundle'
""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

Bundle 'Csound-compiler-plugin'
""""""""""""""""""""""""""""""""""""""""""
 
"Bundle 'Syntastic'
""""""""""""""""""""""""""""""""""""""""""
"echo the error at the line
"let g:syntastic_echo_current_error=1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"let g:syntastic_enable_balloons=0
"auto open on erros / auto close on no errors
"let g:syntastic_auto_loc_list=1
"let g:syntastic_loc_list_height=5

Bundle 'matchparenpp'
""""""""""""""""""""""""""""""""""""""""""
Bundle 'taglist.vim'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Use_Right_Window=1
let Tlist_Display_Prototype=1
let Tlist_Enable_Fold_Column=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Inc_Winwidth=0

Bundle 'AutoComplPop'
""""""""""""""""""""""""""""""""""""""""""
Bundle 'The-NERD-tree'
""""""""""""""""""""""""""""""""""""""""""
" The-NERD-tree 설정
let g:NERDChristmasTree=1   "colorful
let g:NERDTreeAutoCenter=1
let g:NERDTreeChDirMode=1
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeSortOrder=['\.c$', '\.h$', '\.o$', '*']   " *.c, *.h, 기타파일 순으로 정렬합니다.
let g:NERDTreeBookmarksFile = $HOME.'/.vim/NERDTreeBookmarks' 
let g:NERDTreeIgnore=['\.vim$', '\~$']
let g:NERDTreeWinSize=40
let g:NERDTreeMinimalUI=1           "NERDTree에서 (위에뜨는) help/bookmark 메세지를 보여주지 않습니다.
let g:NERDTreeShowHidden = 1        "숨김파일을 보여준다고 합니다.
let g:NERDTreeShowLineNumbers=1     "라인을 보여줍니다
"let g:NERDTreeShowFiles = 0        "0이면 파일을 보여주지 않고, 디렉토리만 보여줍니다.
let g:NERDTreeWinPos="left"        "이렇게 설정하면 오른쪽에 NERDTree가 나타납니다.
" 이외에 더 자세한건 :help NERDTree


"""""""""""""""""""""""""""""""""""""""""""
" 생김새 설정
"""""""""""""""""""""""""""""""""""""""""""
set title
 
" 창 크기 설정
if has("gui_running")
    set lines=60
    set co=180
endif
 
colorscheme wombat256mod 

syntax on
 
" Vim UI {
    set cursorcolumn    " highlight the current column
    set cursorline      " highlight current line
    set incsearch       " BUT do highlight as you type you
                        " search phrase
    set laststatus=2    " always show the status line
    set lazyredraw      " do not redraw while running macros
    set linespace=0     " don't insert any extra pixel lines
                        " betweens rows
    "set list            " we do what to show tabs, to ensure we get them
                        " out of my files
    "set listchars=tab:>-,trail:.,extends:>
                        " show tabs and trailing
    set matchtime=5     " how many tenths of a second to blink
                        " matching brackets for
    set hlsearch      " do not highlight searched for phrases
    set nostartofline   " leave my cursor where it was
    set novisualbell    " don't blink
    set number          " turn on line numbers
    set numberwidth=5   " We are good up to 99999 lines
    set report=0        " tell us when anything is changed via :...
    set ruler           " Always show current positions along the bottom
    set scrolloff=10    " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid
                        " 'press a key' prompt
    set showcmd         " show the command being typed
    set showmatch       " show matching brackets
    set sidescrolloff=10        " Keep 5 lines at the size
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current
    "              | | | | |  |   |      |  |     |       column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in
    "              | | | | |  |   |          square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- modified flag in square brackets
    "              +-- full path to file in the buffer
    set statusline+=%#warningmsg#
    set statusline+=%*
" }

 
"""""""""""""""""""""""""""""""""""""""""""
" 사용 설정
"""""""""""""""""""""""""""""""""""""""""""
set backspace=2         "삽입모드에서 백스페이스 계속 허용
 
set autoindent
set cindent
set smartindent
set nobackup
set mouse=a             "어느 곳에서든 마우스 사용
set noto ttimeout
     
" Text Formatting/Layout {
    "set completeopt=        " don't use a pop up menu for completions
    set expandtab           " no real tabs please!
    set formatoptions=rq    " Automatically insert comment leader on return,
                            " and let gq format comments
    set ignorecase          " case insensitive by default
    set infercase           " case inferred by default
    set nowrap              " do not wrap line
    set shiftround          " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase           " if there are caps, go case-sensitive
    set shiftwidth=4        " auto-indent amount when using cindent,
                            " >>, << and stuff like that
    set softtabstop=4       " when hitting tab or backspace, how many spaces
                            "should a tab be (see expandtab)
    set tabstop=4           " real tabs should be 8, and they will show with
                            " set list on
    set ww=h,l,b
    set sol                 " start of line
"}

"Toggle NERDTree
map <F1> :NERDTreeToggle<cr>
"Toggle Tagbar
map <F2> :TlistToggle<cr>
"Switch windows
map <F3> <C-w><C-w>
"Error list
map <F4> :cl<cr>
"Next error
map <F6> :cn<cr>
"Previous error
map <F5> :cp<cr>

nmap \q :nohlsearch<CR>

set wmh=0
inoremap jj <Esc>

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {<CR>}<ESC>O
