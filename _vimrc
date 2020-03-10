set number
syntax on
colorscheme molokai 

set autoindent	
set expandtab
set tabstop=5 "画面上でタブ文字が占める幅
set cindent

set incsearch
set showmode
set title
set showmatch
set cursorline
set cursorcolumn
set virtualedit=onemore
set laststatus=2
set ruler
set hlsearch
set ignorecase

set wildmenu

"keymaping
inoremap [ []<Left>
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<Left>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap ' ''<Left>
inoremap " ""<LEFT>

inoremap <C-Space> <Esc>

"矢印キーを無効にする
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

""runtime macros/editexisting.vim
"挿入モードとノーマルモードで色変更（なぜか動かない）
if has('unix') && !has('gui_running')
     inoremap <silent> <ESC> <ESC>
     inoremap <silent> <C-[> <ESC>
endif
 au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow cterm=none"ctermは属性"
 au InsertLeave * hi StatusLine guifg=DarkBlue guibg=DarkGray gui=none ctermfg=Red ctermbg=DarkGray cterm=none
"ファイルを開いたときに、カーソル位置を最後にカーソルがあった位置まで変更"
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

